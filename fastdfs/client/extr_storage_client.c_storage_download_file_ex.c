
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef scalar_t__ DownloadCallback ;
typedef int ConnectionInfo ;


 int FDFS_DOWNLOAD_TO_CALLBACK ;
 int storage_do_download_file_ex (int *,int *,int ,char const*,char const*,int const,int const,char**,void*,int *) ;

int storage_download_file_ex(ConnectionInfo *pTrackerServer, ConnectionInfo *pStorageServer, const char *group_name, const char *remote_filename, const int64_t file_offset, const int64_t download_bytes, DownloadCallback callback, void *arg, int64_t *file_size)




{
 char *pCallback;
 pCallback = (char *)callback;
 return storage_do_download_file_ex(pTrackerServer, pStorageServer, FDFS_DOWNLOAD_TO_CALLBACK, group_name, remote_filename, file_offset, download_bytes, &pCallback, arg, file_size);


}
