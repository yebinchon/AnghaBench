
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FDFSFileInfo ;
typedef int ConnectionInfo ;


 int storage_query_file_info_ex (int *,int *,char const*,char const*,int *,int) ;

int storage_file_exist(ConnectionInfo *pTrackerServer, ConnectionInfo *pStorageServer, const char *group_name, const char *remote_filename)


{
 FDFSFileInfo file_info;
 return storage_query_file_info_ex(pTrackerServer, pStorageServer, group_name, remote_filename, &file_info, 1);


}
