
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef scalar_t__ UploadCallback ;
typedef int ConnectionInfo ;


 int EINVAL ;
 int FDFS_UPLOAD_BY_CALLBACK ;
 int storage_do_modify_file (int *,int *,int ,char*,void*,int const,int const,char const*,char const*) ;

int storage_modify_by_callback(ConnectionInfo *pTrackerServer, ConnectionInfo *pStorageServer, UploadCallback callback, void *arg, const int64_t file_offset, const int64_t file_size, const char *group_name, const char *appender_filename)




{
 if (appender_filename == ((void*)0) || *appender_filename == '\0' || group_name == ((void*)0) || *group_name == '\0')

 {
  return EINVAL;
 }

 return storage_do_modify_file(pTrackerServer, pStorageServer, FDFS_UPLOAD_BY_CALLBACK, (char *)callback, arg, file_offset, file_size, group_name, appender_filename);


}
