
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int new_group_name ;
typedef int int64_t ;
typedef int FDFSMetaData ;
typedef int ConnectionInfo ;


 char* FDFS_FILE_ID_SEPERATOR ;
 int FDFS_GROUP_NAME_MAX_LEN ;
 int snprintf (char*,int,char*,char const*) ;
 int sprintf (char*,char*,char*,char*,char*) ;
 int storage_do_upload_file (int *,int *,int const,char const,int const,char const*,void*,int const,int *,int *,char const*,int const*,int const,char*,char*) ;

int storage_do_upload_file1(ConnectionInfo *pTrackerServer, ConnectionInfo *pStorageServer, const int store_path_index, const char cmd, const int upload_type, const char *file_buff, void *arg, const int64_t file_size, const char *file_ext_name, const FDFSMetaData *meta_list, const int meta_count, const char *group_name, char *file_id)





{
 char new_group_name[FDFS_GROUP_NAME_MAX_LEN + 1];
 char remote_filename[128];
 int result;

 if (group_name == ((void*)0))
 {
  *new_group_name = '\0';
 }
 else
 {
  snprintf(new_group_name, sizeof(new_group_name), "%s", group_name);

 }

 result = storage_do_upload_file(pTrackerServer, pStorageServer, store_path_index, cmd, upload_type, file_buff, arg, file_size, ((void*)0), ((void*)0), file_ext_name, meta_list, meta_count, new_group_name, remote_filename);



 if (result == 0)
 {
  sprintf(file_id, "%s%c%s", new_group_name, FDFS_FILE_ID_SEPERATOR, remote_filename);

 }
 else
 {
  file_id[0] = '\0';
 }

 return result;
}
