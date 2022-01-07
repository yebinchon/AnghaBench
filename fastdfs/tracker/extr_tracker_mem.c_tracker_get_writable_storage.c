
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ store_server; } ;
struct TYPE_4__ {int current_write_server; int active_count; int * pStoreServer; int ** active_servers; } ;
typedef int FDFSStorageDetail ;
typedef TYPE_1__ FDFSGroupInfo ;


 scalar_t__ FDFS_STORE_SERVER_ROUND_ROBIN ;
 TYPE_3__ g_groups ;

FDFSStorageDetail *tracker_get_writable_storage(FDFSGroupInfo *pStoreGroup)
{
 int write_server_index;
 if (g_groups.store_server == FDFS_STORE_SERVER_ROUND_ROBIN)
 {
  write_server_index = pStoreGroup->current_write_server++;
  if (pStoreGroup->current_write_server >= pStoreGroup->active_count)

  {
   pStoreGroup->current_write_server = 0;
  }

  if (write_server_index >= pStoreGroup->active_count)
  {
   write_server_index = 0;
  }
  return *(pStoreGroup->active_servers + write_server_index);
 }
 else
 {
  return pStoreGroup->pStoreServer;
 }
}
