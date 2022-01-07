
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int ConnectionInfo ;


 int EINVAL ;
 int FDFS_UPLOAD_BY_BUFF ;
 int storage_do_append_file (int *,int *,int ,char const*,int *,int const,char const*,char const*) ;

int storage_append_by_filebuff(ConnectionInfo *pTrackerServer, ConnectionInfo *pStorageServer, const char *file_buff, const int64_t file_size, const char *group_name, const char *appender_filename)



{
 if (appender_filename == ((void*)0) || *appender_filename == '\0' || group_name == ((void*)0) || *group_name == '\0')

 {
  return EINVAL;
 }

 return storage_do_append_file(pTrackerServer, pStorageServer, FDFS_UPLOAD_BY_BUFF, file_buff, ((void*)0), file_size, group_name, appender_filename);


}
