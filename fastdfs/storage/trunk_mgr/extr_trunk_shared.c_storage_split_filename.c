
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char** paths; } ;


 int SPLIT_FILENAME_BODY (char const*,int*,char*,int,int) ;
 TYPE_1__ g_fdfs_store_paths ;

int storage_split_filename(const char *logic_filename, int *filename_len, char *true_filename, char **ppStorePath)

{
 int store_path_index;

 SPLIT_FILENAME_BODY(logic_filename, filename_len, true_filename, store_path_index, 1);


 *ppStorePath = g_fdfs_store_paths.paths[store_path_index];

 return 0;
}
