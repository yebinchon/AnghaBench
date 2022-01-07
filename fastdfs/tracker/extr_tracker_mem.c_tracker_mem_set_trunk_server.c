
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {TYPE_1__ const* pTrunkServer; } ;
struct TYPE_10__ {scalar_t__ status; int id; } ;
typedef TYPE_1__ const FDFSStorageDetail ;
typedef TYPE_2__ FDFSGroupInfo ;


 int EALREADY ;
 int EEXIST ;
 int ENOENT ;
 int ENONET ;
 int EOPNOTSUPP ;
 scalar_t__ FDFS_STORAGE_STATUS_ACTIVE ;
 scalar_t__ g_if_leader_self ;
 scalar_t__ g_if_use_trunk_file ;
 scalar_t__ strcmp (char const*,int ) ;
 int tracker_mem_do_set_trunk_server (TYPE_2__*,TYPE_1__ const*,int) ;
 int tracker_mem_find_trunk_server (TYPE_2__*,int) ;
 TYPE_1__ const* tracker_mem_get_storage (TYPE_2__*,char const*) ;

const FDFSStorageDetail *tracker_mem_set_trunk_server( FDFSGroupInfo *pGroup, const char *pStroageId, int *result)

{
 FDFSStorageDetail *pServer;
 FDFSStorageDetail *pTrunkServer;

 if (!(g_if_leader_self && g_if_use_trunk_file))
 {
  *result = EOPNOTSUPP;
  return ((void*)0);
 }

 pTrunkServer = pGroup->pTrunkServer;
 if (pStroageId == ((void*)0) || *pStroageId == '\0')
 {
  if (pTrunkServer != ((void*)0) && pTrunkServer-> status == FDFS_STORAGE_STATUS_ACTIVE)

  {
   *result = 0;
   return pTrunkServer;
  }

  *result = tracker_mem_find_trunk_server(pGroup, 1);
  if (*result != 0)
  {
   return ((void*)0);
  }
  return pGroup->pTrunkServer;
 }

 if (pTrunkServer != ((void*)0) && pTrunkServer->status == FDFS_STORAGE_STATUS_ACTIVE)

 {
  if (strcmp(pStroageId, pTrunkServer->id) == 0)
  {
   *result = EALREADY;
  }
  else
  {
   *result = EEXIST;
  }
  return pTrunkServer;
 }

 pServer = tracker_mem_get_storage(pGroup, pStroageId);
 if (pServer == ((void*)0))
 {
  *result = ENOENT;
  return ((void*)0);
 }

 if (pServer->status != FDFS_STORAGE_STATUS_ACTIVE)
 {
  *result = ENONET;
  return ((void*)0);
 }

 *result = tracker_mem_do_set_trunk_server(pGroup, pServer, 1);

 return *result == 0 ? pGroup->pTrunkServer : ((void*)0);
}
