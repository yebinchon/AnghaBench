
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ip_addr; } ;
typedef TYPE_1__ ConnectionInfo ;


 TYPE_1__* getConnectedStorageServer (TYPE_1__*,int*) ;
 int pTrackerServer ;
 int storage_delete_file1 (int ,TYPE_1__*,char const*) ;
 int strcpy (char*,int ) ;
 int tracker_query_storage_update1 (int ,TYPE_1__*,char const*) ;

int delete_file(const char *file_id, char *storage_ip)
{
 int result;
 ConnectionInfo storageServer;
 ConnectionInfo *pStorageServer;

 if ((result=tracker_query_storage_update1(pTrackerServer,
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
 result = storage_delete_file1(pTrackerServer, pStorageServer, file_id);

 return result;
}
