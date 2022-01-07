
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_6__ {int ip_addr; } ;
typedef TYPE_1__ ConnectionInfo ;


 int downloadFileCallback ;
 TYPE_1__* getConnectedStorageServer (TYPE_1__*,int*) ;
 int pTrackerServer ;
 int storage_download_file_ex1 (int ,TYPE_1__*,char const*,int ,int ,int ,int *,int*) ;
 int strcpy (char*,int ) ;
 int tracker_query_storage_fetch1 (int ,TYPE_1__*,char const*) ;

int download_file(const char *file_id, int *file_size, char *storage_ip)
{
 int result;
 ConnectionInfo storageServer;
 ConnectionInfo *pStorageServer;
 int64_t file_bytes;

 if ((result=tracker_query_storage_fetch1(pTrackerServer,
   &storageServer, file_id)) != 0)
 {
  return result;
 }

 if ((pStorageServer=getConnectedStorageServer(&storageServer,
   &result)) == ((void*)0))
 {
  return result;
 }

 strcpy(storage_ip, storageServer.ip_addr);
 result = storage_download_file_ex1(pTrackerServer, pStorageServer,
   file_id, 0, 0, downloadFileCallback, ((void*)0), &file_bytes);
 *file_size = file_bytes;

 return result;
}
