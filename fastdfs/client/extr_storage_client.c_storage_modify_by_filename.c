
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; int st_mode; } ;
typedef int int64_t ;
typedef int ConnectionInfo ;


 int EINVAL ;
 int EPERM ;
 int FDFS_UPLOAD_BY_FILE ;
 int S_ISREG (int ) ;
 scalar_t__ errno ;
 scalar_t__ stat (char const*,struct stat*) ;
 int storage_do_modify_file (int *,int *,int ,char const*,int *,int const,int ,char const*,char const*) ;

int storage_modify_by_filename(ConnectionInfo *pTrackerServer, ConnectionInfo *pStorageServer, const char *local_filename, const int64_t file_offset, const char *group_name, const char *appender_filename)



{
 struct stat stat_buf;

 if (appender_filename == ((void*)0) || *appender_filename == '\0' || group_name == ((void*)0) || *group_name == '\0')

 {
  return EINVAL;
 }

 if (stat(local_filename, &stat_buf) != 0)
 {
  return errno != 0 ? errno : EPERM;
 }

 if (!S_ISREG(stat_buf.st_mode))
 {
  return EINVAL;
 }
 return storage_do_modify_file(pTrackerServer, pStorageServer, FDFS_UPLOAD_BY_FILE, local_filename, ((void*)0), file_offset, stat_buf.st_size, group_name, appender_filename);



}
