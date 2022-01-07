
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int ConnectionInfo ;


 int FDFS_DOWNLOAD_TO_FILE ;
 int storage_do_download_file (int *,int *,int ,char const*,char const*,char**,int *,int *) ;

int storage_download_file_to_file(ConnectionInfo *pTrackerServer, ConnectionInfo *pStorageServer, const char *group_name, const char *remote_filename, const char *local_filename, int64_t *file_size)



{
 char *pLocalFilename;
 pLocalFilename = (char *)local_filename;
 return storage_do_download_file(pTrackerServer, pStorageServer, FDFS_DOWNLOAD_TO_FILE, group_name, remote_filename, &pLocalFilename, ((void*)0), file_size);


}
