
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_4__ {int active_count; int storage_port; int ** active_servers; int * pStoreServer; } ;
typedef int FDFSStorageDetail ;
typedef TYPE_1__ FDFSGroupInfo ;


 int ENOENT ;
 int FDFS_CURRENT_IP_ADDR (int *) ;
 int tracker_mem_do_set_trunk_server (TYPE_1__*,int *,int const) ;
 int tracker_mem_get_trunk_binlog_size (int ,int ,scalar_t__*) ;

__attribute__((used)) static int tracker_mem_find_trunk_server(FDFSGroupInfo *pGroup,
  const bool save)
{
 FDFSStorageDetail *pStoreServer;
 FDFSStorageDetail **ppServer;
 FDFSStorageDetail **ppServerEnd;
 int result;
 int64_t file_size;
 int64_t max_file_size;

 pStoreServer = pGroup->pStoreServer;
 if (pStoreServer == ((void*)0))
 {
  return ENOENT;
 }

 result = tracker_mem_get_trunk_binlog_size(
            FDFS_CURRENT_IP_ADDR(pStoreServer),
            pGroup->storage_port, &max_file_size);
 if (result != 0)
 {
  return result;
 }

 ppServerEnd = pGroup->active_servers + pGroup->active_count;
 for (ppServer=pGroup->active_servers; ppServer<ppServerEnd; ppServer++)
 {
  if (*ppServer == pStoreServer)
  {
   continue;
  }

  result = tracker_mem_get_trunk_binlog_size(
                FDFS_CURRENT_IP_ADDR(*ppServer),
                pGroup->storage_port, &file_size);
  if (result != 0)
  {
   continue;
  }

  if (file_size > max_file_size)
  {
   pStoreServer = *ppServer;
  }
 }

 return tracker_mem_do_set_trunk_server(pGroup, pStoreServer, save);
}
