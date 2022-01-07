
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_10__ {TYPE_2__* pFree; TYPE_2__* pTail; } ;
typedef TYPE_3__ dmacHw_DESC_RING_t ;
struct TYPE_11__ {int transferType; } ;
typedef TYPE_4__ dmacHw_CONFIG_t ;
struct TYPE_8__ {int lo; } ;
struct TYPE_9__ {int devCtl; scalar_t__ sar; scalar_t__ dar; TYPE_1__ ctl; } ;


 int dmacHw_DESC_FREE ;
 scalar_t__ dmacHw_DST_IS_MEMORY (int ) ;
 int dmacHw_FREE_USER_MEMORY ;
 TYPE_3__* dmacHw_GET_DESC_RING (void*) ;
 int dmacHw_NEXT_DESC (TYPE_3__*,int ) ;
 int pFree ;
 void stub1 (void*) ;
 void stub2 (void*) ;

int dmacHw_freeMem(dmacHw_CONFIG_t *pConfig,
     void *pDescriptor,
     void (*fpFree) (void *)
    ) {
 dmacHw_DESC_RING_t *pRing = dmacHw_GET_DESC_RING(pDescriptor);
 uint32_t count = 0;

 if (fpFree == ((void*)0)) {
  return -1;
 }

 while ((pRing->pFree != pRing->pTail)
        && (pRing->pFree->ctl.lo & dmacHw_DESC_FREE)) {
  if (pRing->pFree->devCtl == dmacHw_FREE_USER_MEMORY) {

   if (dmacHw_DST_IS_MEMORY(pConfig->transferType)) {
    (*fpFree) ((void *)pRing->pFree->dar);
   } else {

    (*fpFree) ((void *)pRing->pFree->sar);
   }

   pRing->pFree->devCtl = ~dmacHw_FREE_USER_MEMORY;
  }
  dmacHw_NEXT_DESC(pRing, pFree);

  count++;
 }

 return count;
}
