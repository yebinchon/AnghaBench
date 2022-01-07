
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int FDFSMetaData ;
typedef int ConnectionInfo ;


 int EINVAL ;
 int FDFS_UPLOAD_BY_BUFF ;
 int STORAGE_PROTO_CMD_UPLOAD_SLAVE_FILE ;
 int storage_do_upload_file (int *,int *,int ,int ,int ,char const*,int *,int const,char const*,char const*,char const*,int const*,int const,char*,char*) ;

int storage_upload_slave_by_filebuff(ConnectionInfo *pTrackerServer, ConnectionInfo *pStorageServer, const char *file_buff, const int64_t file_size, const char *master_filename, const char *prefix_name, const char *file_ext_name, const FDFSMetaData *meta_list, const int meta_count, char *group_name, char *remote_filename)





{
 if (master_filename == ((void*)0) || *master_filename == '\0' || prefix_name == ((void*)0) || *prefix_name == '\0' || group_name == ((void*)0) || *group_name == '\0')


 {
  return EINVAL;
 }

 return storage_do_upload_file(pTrackerServer, pStorageServer, 0, STORAGE_PROTO_CMD_UPLOAD_SLAVE_FILE, FDFS_UPLOAD_BY_BUFF, file_buff, ((void*)0), file_size, master_filename, prefix_name, file_ext_name, meta_list, meta_count, group_name, remote_filename);





}
