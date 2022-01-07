
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef scalar_t__ UploadCallback ;
typedef int FDFSMetaData ;
typedef int ConnectionInfo ;


 int FDFS_UPLOAD_BY_CALLBACK ;
 int storage_do_upload_file (int *,int *,int const,char const,int ,char*,void*,int const,int *,int *,char const*,int const*,int const,char*,char*) ;

int storage_upload_by_callback_ex(ConnectionInfo *pTrackerServer, ConnectionInfo *pStorageServer, const int store_path_index, const char cmd, UploadCallback callback, void *arg, const int64_t file_size, const char *file_ext_name, const FDFSMetaData *meta_list, const int meta_count, char *group_name, char *remote_filename)





{
 return storage_do_upload_file(pTrackerServer, pStorageServer, store_path_index, cmd, FDFS_UPLOAD_BY_CALLBACK, (char *)callback, arg, file_size, ((void*)0), ((void*)0), file_ext_name, meta_list, meta_count, group_name, remote_filename);




}
