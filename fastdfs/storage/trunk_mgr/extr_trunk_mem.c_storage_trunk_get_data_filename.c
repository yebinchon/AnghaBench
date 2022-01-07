
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_PATH_SIZE ;
 char* STORAGE_TRUNK_DATA_FILENAME ;
 char* g_fdfs_base_path ;
 int snprintf (char*,int ,char*,char*,char*) ;

char *storage_trunk_get_data_filename(char *full_filename)
{
 snprintf(full_filename, MAX_PATH_SIZE, "%s/data/%s", g_fdfs_base_path, STORAGE_TRUNK_DATA_FILENAME);

 return full_filename;
}
