
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int ip_addr; } ;
typedef TYPE_1__ ConnectionInfo ;


 int ECONNREFUSED ;
 scalar_t__ errno ;
 int storage_delete_file1 (TYPE_1__*,TYPE_1__*,char const*) ;
 int strcpy (char*,int ) ;
 int tracker_close_connection (TYPE_1__*) ;
 int tracker_close_connection_ex (TYPE_1__*,int) ;
 TYPE_1__* tracker_get_connection () ;
 TYPE_1__* tracker_make_connection (TYPE_1__*,int*) ;
 int tracker_query_storage_update1 (TYPE_1__*,TYPE_1__*,char const*) ;

int delete_file(const char *file_id, char *storage_ip)
{
 int result;
 ConnectionInfo *pTrackerServer;
 ConnectionInfo *pStorageServer;
 ConnectionInfo storageServer;

 pTrackerServer = tracker_get_connection();
 if (pTrackerServer == ((void*)0))
 {
  return errno != 0 ? errno : ECONNREFUSED;
 }

 if ((result=tracker_query_storage_update1(pTrackerServer, &storageServer, file_id)) != 0)

 {
  tracker_close_connection_ex(pTrackerServer, 1);
  return result;
 }

 if ((pStorageServer=tracker_make_connection(&storageServer, &result)) == ((void*)0))

 {
  tracker_close_connection(pTrackerServer);
  return result;
 }

 strcpy(storage_ip, storageServer.ip_addr);
 result = storage_delete_file1(pTrackerServer, pStorageServer, file_id);

 tracker_close_connection(pTrackerServer);
 tracker_close_connection(pStorageServer);

 return result;
}
