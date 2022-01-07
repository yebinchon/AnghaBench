
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {void* hi; } ;
struct TYPE_6__ {int llpPhy; int llp; TYPE_1__ ctl; } ;
typedef TYPE_2__ dmacHw_DESC_t ;
struct TYPE_7__ {int virt2PhyOffset; int num; TYPE_2__* pHead; int pProg; TYPE_2__* pEnd; TYPE_2__* pTail; TYPE_2__* pFree; } ;
typedef TYPE_3__ dmacHw_DESC_RING_t ;


 int dmacHw_ASSERT (int ) ;
 void* dmacHw_DESC_FREE ;
 int dmacHw_DESC_INIT ;
 TYPE_3__* dmacHw_GET_DESC_RING (void*) ;
 int dmacHw_descriptorLen (int) ;
 int memset (void*,int ,int) ;

int dmacHw_initDescriptor(void *pDescriptorVirt,
     uint32_t descriptorPhyAddr,
     uint32_t len,
     uint32_t num
    ) {
 uint32_t i;
 dmacHw_DESC_RING_t *pRing;
 dmacHw_DESC_t *pDesc;


 if ((uint32_t) pDescriptorVirt & 0x00000003) {
  dmacHw_ASSERT(0);
  return -1;
 }


 if (len < dmacHw_descriptorLen(num)) {
  return -1;
 }

 pRing = dmacHw_GET_DESC_RING(pDescriptorVirt);
 pRing->pHead =
     (dmacHw_DESC_t *) ((uint32_t) pRing + sizeof(dmacHw_DESC_RING_t));
 pRing->pFree = pRing->pTail = pRing->pEnd = pRing->pHead;
 pRing->pProg = dmacHw_DESC_INIT;

 pDesc = pRing->pHead;

 pRing->virt2PhyOffset = (uint32_t) pDescriptorVirt - descriptorPhyAddr;


 for (i = 0; i < num - 1; i++) {

  memset((void *)pDesc, 0, sizeof(dmacHw_DESC_t));

  pDesc->llpPhy = (uint32_t) (pDesc + 1) - pRing->virt2PhyOffset;

  pDesc->llp = (uint32_t) (pDesc + 1);

  pDesc->ctl.hi = dmacHw_DESC_FREE;

  pDesc++;
 }


 memset((void *)pDesc, 0, sizeof(dmacHw_DESC_t));


 pDesc->llpPhy = (uint32_t) pRing->pHead - pRing->virt2PhyOffset;



 pDesc->llp = (uint32_t) pRing->pHead;

 pDesc->ctl.hi = dmacHw_DESC_FREE;

 pRing->num = num;
 return 0;
}
