
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int dmacHw_HANDLE_t ;
struct TYPE_10__ {int hi; scalar_t__ lo; } ;
struct TYPE_11__ {TYPE_1__ ctl; int devCtl; scalar_t__ dar; scalar_t__ sar; scalar_t__ llp; } ;
typedef TYPE_2__ dmacHw_DESC_t ;
struct TYPE_12__ {int num; scalar_t__ virt2PhyOffset; TYPE_2__* pEnd; TYPE_2__* pHead; TYPE_2__* pTail; } ;
typedef TYPE_3__ dmacHw_DESC_RING_t ;
struct TYPE_13__ {scalar_t__ transferType; scalar_t__ srcUpdate; scalar_t__ dstUpdate; scalar_t__ srcMaxTransactionWidth; scalar_t__ dstMaxTransactionWidth; scalar_t__ srcMasterInterface; scalar_t__ dstMasterInterface; scalar_t__ srcMaxBurstWidth; scalar_t__ dstMaxBurstWidth; } ;
typedef TYPE_4__ dmacHw_CONFIG_t ;
struct TYPE_14__ {int descUpdated; int varDataStarted; int channel; int module; } ;
typedef TYPE_5__ dmacHw_CBLK_t ;


 int dmacHw_ASSERT (int) ;
 int dmacHw_DESC_FREE ;
 int dmacHw_FREE_USER_MEMORY ;
 TYPE_3__* dmacHw_GET_DESC_RING (void*) ;
 TYPE_5__* dmacHw_HANDLE_TO_CBLK (int ) ;
 int dmacHw_NEXT_DESC (TYPE_3__*,int ) ;
 scalar_t__ dmacHw_REG_CTL_INT_EN ;
 scalar_t__ dmacHw_REG_CTL_LLP_DST_EN ;
 scalar_t__ dmacHw_REG_CTL_LLP_SRC_EN ;
 scalar_t__ dmacHw_REG_CTL_TTFC_PM_PERI ;
 int dmacHw_SET_LLP (int ,int ,scalar_t__) ;
 scalar_t__ dmacHw_TRANSFER_TYPE_PERIPHERAL_TO_MEM ;
 int pHead ;
 void* stub1 (int) ;

int dmacHw_setVariableDataDescriptor(dmacHw_HANDLE_t handle,
         dmacHw_CONFIG_t *pConfig,
         void *pDescriptor,
         uint32_t srcAddr,
         void *(*fpAlloc) (int len),
         int len,
         int num
    ) {
 dmacHw_CBLK_t *pCblk = dmacHw_HANDLE_TO_CBLK(handle);
 dmacHw_DESC_t *pProg = ((void*)0);
 dmacHw_DESC_t *pLast = ((void*)0);
 dmacHw_DESC_RING_t *pRing = dmacHw_GET_DESC_RING(pDescriptor);
 uint32_t dstAddr;
 uint32_t controlParam;
 int i;

 dmacHw_ASSERT(pConfig->transferType ==
        dmacHw_TRANSFER_TYPE_PERIPHERAL_TO_MEM);

 if (num > pRing->num) {
  return -1;
 }

 pLast = pRing->pEnd;
 pProg = pRing->pHead;

 controlParam = pConfig->srcUpdate |
     pConfig->dstUpdate |
     pConfig->srcMaxTransactionWidth |
     pConfig->dstMaxTransactionWidth |
     pConfig->srcMasterInterface |
     pConfig->dstMasterInterface |
     pConfig->srcMaxBurstWidth |
     pConfig->dstMaxBurstWidth |
     dmacHw_REG_CTL_TTFC_PM_PERI |
     dmacHw_REG_CTL_LLP_DST_EN |
     dmacHw_REG_CTL_LLP_SRC_EN | dmacHw_REG_CTL_INT_EN;

 for (i = 0; i < num; i++) {

  if (((pRing->pHead->ctl.hi & dmacHw_DESC_FREE) == 0) ||
      ((dmacHw_DESC_t *) pRing->pHead->llp == pRing->pTail)
      ) {

   break;
  }

  pRing->pHead->sar = srcAddr;
  if (fpAlloc) {

   dstAddr = (uint32_t) (*fpAlloc) (len);

   if (dstAddr == 0) {
    if (i == 0) {

     return -1;
    }
    break;
   }

   pRing->pHead->dar = dstAddr;
  }

  pRing->pHead->ctl.lo = controlParam;

  pRing->pHead->devCtl = dmacHw_FREE_USER_MEMORY;

  pRing->pHead->ctl.hi = 0;

  pRing->pEnd = pRing->pHead;

  dmacHw_NEXT_DESC(pRing, pHead);
 }


 pRing->pEnd->ctl.lo &=
     ~(dmacHw_REG_CTL_LLP_DST_EN | dmacHw_REG_CTL_LLP_SRC_EN);

 if (pLast != pProg) {
  pLast->ctl.lo |=
      dmacHw_REG_CTL_LLP_DST_EN | dmacHw_REG_CTL_LLP_SRC_EN;
 }

 pCblk->descUpdated = 1;
 if (!pCblk->varDataStarted) {

  dmacHw_SET_LLP(pCblk->module, pCblk->channel,
          (uint32_t) pProg - pRing->virt2PhyOffset);

  pCblk->varDataStarted = 1;
 }

 return i;
}
