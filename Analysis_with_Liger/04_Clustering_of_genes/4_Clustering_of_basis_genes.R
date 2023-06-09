# Load all the functions stored in scripts from the folder housing the scripts
scripts_list <- list.files("/home/ytamal2/Documents/2022/Final_part_PhD_Thesis/Functions", pattern = "*.R$", full.names = TRUE) 
sapply(scripts_list, source, .GlobalEnv)

###############################
###
# Convert the liger object to a seurat object to perform downstream analysis
###

storing_dir = "/biodata/dep_tsiantis/grp_laurent/tamal/2023/Analysis_of_single_species_Cardamine/Liger_Analyses/Liger_analysis_strategy_1"

cluster_basis_genes(seurat_object_dir = "/biodata/dep_tsiantis/grp_laurent/tamal/2023/Analysis_of_single_species_Cardamine/Liger_Analyses/Liger_analysis_strategy_1/On_coefficient/Seurat_objects/seurat_object_with_all_factorized_K.RData", 
                    reduction_name_pattern = "^inmf",
                    store_data = TRUE,
                    store_dir = storing_dir,
                    store_folder = "Basis_objects")
