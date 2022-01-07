
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char** paths; } ;


 int fdfs_check_data_filename (char*,int) ;
 TYPE_1__ g_fdfs_store_paths ;
 int snprintf (char*,int const,char*,char*,char*) ;
 int storage_split_filename_ex (char const*,int*,char*,int*) ;

int storage_logic_to_local_full_filename(const char *logic_filename,
        const int logic_filename_len, int *store_path_index,
        char *full_filename, const int filename_size)
{
    int result;
    int filename_len;
 char true_filename[128];

    filename_len = logic_filename_len;
 if ((result=storage_split_filename_ex(logic_filename,
  &filename_len, true_filename, store_path_index)) != 0)
 {
  return result;
 }
 if ((result=fdfs_check_data_filename(true_filename, filename_len)) != 0)
 {
  return result;
 }

 snprintf(full_filename, filename_size, "%s/data/%s",
            g_fdfs_store_paths.paths[*store_path_index], true_filename);
    return 0;
}
