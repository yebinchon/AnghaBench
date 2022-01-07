
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; int st_mode; } ;
typedef int FDFSMetaData ;
typedef int ConnectionInfo ;


 int EINVAL ;
 int FDFS_UPLOAD_BY_FILE ;
 int S_ISREG (int ) ;
 int errno ;
 char* fdfs_get_file_ext_name (char const*) ;
 scalar_t__ stat (char const*,struct stat*) ;
 int storage_do_upload_file (int *,int *,int const,char const,int ,char const*,int *,int ,int *,int *,char const*,int const*,int const,char*,char*) ;

int storage_upload_by_filename_ex(ConnectionInfo *pTrackerServer, ConnectionInfo *pStorageServer, const int store_path_index, const char cmd, const char *local_filename, const char *file_ext_name, const FDFSMetaData *meta_list, const int meta_count, char *group_name, char *remote_filename)




{
 struct stat stat_buf;

 if (stat(local_filename, &stat_buf) != 0)
 {
  group_name[0] = '\0';
  remote_filename[0] = '\0';
  return errno;
 }

 if (!S_ISREG(stat_buf.st_mode))
 {
  group_name[0] = '\0';
  remote_filename[0] = '\0';
  return EINVAL;
 }

 if (file_ext_name == ((void*)0))
 {
  file_ext_name = fdfs_get_file_ext_name(local_filename);
 }

 return storage_do_upload_file(pTrackerServer, pStorageServer, store_path_index, cmd, FDFS_UPLOAD_BY_FILE, local_filename, ((void*)0), stat_buf.st_size, ((void*)0), ((void*)0), file_ext_name, meta_list, meta_count, group_name, remote_filename);




}
