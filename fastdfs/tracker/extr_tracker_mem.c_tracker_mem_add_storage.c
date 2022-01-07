
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * pStorage; int pGroup; } ;
typedef TYPE_1__ TrackerClientInfo ;
typedef int FDFSStorageDetail ;


 int _tracker_mem_add_storage (int ,int **,char const*,char const*,int const,int const,int*) ;

__attribute__((used)) static int tracker_mem_add_storage(TrackerClientInfo *pClientInfo,
  const char *id, const char *ip_addr,
  const bool bNeedSleep, const bool bNeedLock, bool *bInserted)
{
 int result;
 FDFSStorageDetail *pStorageServer;

 pStorageServer = ((void*)0);
 result = _tracker_mem_add_storage(pClientInfo->pGroup, &pStorageServer, id, ip_addr, bNeedSleep, bNeedLock, bInserted);


 if (result == 0)
 {
  pClientInfo->pStorage = pStorageServer;
 }

 return result;
}
