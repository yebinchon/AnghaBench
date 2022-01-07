
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int hi; } ;
struct TYPE_6__ {TYPE_1__ ctl; } ;
typedef TYPE_2__ dmacHw_DESC_t ;
struct TYPE_7__ {int num; int pProg; TYPE_2__* pHead; TYPE_2__* pEnd; TYPE_2__* pTail; TYPE_2__* pFree; } ;
typedef TYPE_3__ dmacHw_DESC_RING_t ;


 int dmacHw_DESC_FREE ;
 int dmacHw_DESC_INIT ;
 TYPE_3__* dmacHw_GET_DESC_RING (void*) ;

void dmacHw_resetDescriptorControl(void *pDescriptor
    ) {
 int i;
 dmacHw_DESC_RING_t *pRing;
 dmacHw_DESC_t *pDesc;

 pRing = dmacHw_GET_DESC_RING(pDescriptor);
 pDesc = pRing->pHead;

 for (i = 0; i < pRing->num; i++) {

  pDesc->ctl.hi = dmacHw_DESC_FREE;

  pDesc++;
 }
 pRing->pFree = pRing->pTail = pRing->pEnd = pRing->pHead;
 pRing->pProg = dmacHw_DESC_INIT;
}
