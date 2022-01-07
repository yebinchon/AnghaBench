
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ip_addr; } ;
typedef TYPE_1__ ConnectionInfo ;


 int FDFS_GROUP_NAME_MAX_LEN ;
 TYPE_1__* getConnectedStorageServer (TYPE_1__*,int*) ;
 int pTrackerServer ;
 int storage_upload_by_filebuff1 (int ,TYPE_1__*,int,char const*,int const,int *,int *,int ,char*,char*) ;
 int strcpy (char*,int ) ;
 int tracker_query_storage_store (int ,TYPE_1__*,char*,int*) ;

int upload_file(const char *file_buff, const int file_size, char *file_id,
  char *storage_ip)
{
 int result;
 int store_path_index;
 char group_name[FDFS_GROUP_NAME_MAX_LEN + 1];
 ConnectionInfo storageServer;
 ConnectionInfo *pStorageServer;

 *group_name = '\0';
 if ((result=tracker_query_storage_store(pTrackerServer, &storageServer,
    group_name, &store_path_index)) != 0)
 {
  return result;
 }


 if ((pStorageServer=getConnectedStorageServer(&storageServer,
   &result)) == ((void*)0))
 {
  return result;
 }

 strcpy(storage_ip, storageServer.ip_addr);
 result = storage_upload_by_filebuff1(pTrackerServer, pStorageServer,
  store_path_index, file_buff, file_size, ((void*)0), ((void*)0), 0, "", file_id);

 return result;
}
