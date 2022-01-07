
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_9__ {TYPE_7__* pHead; TYPE_7__* pTail; TYPE_7__* pEnd; TYPE_7__* pProg; } ;
typedef TYPE_2__ dmacHw_DESC_RING_t ;
struct TYPE_10__ {scalar_t__ flowControler; scalar_t__ transferType; scalar_t__ dstMaxTransactionWidth; scalar_t__ srcMasterInterface; scalar_t__ dstMasterInterface; } ;
typedef TYPE_3__ dmacHw_CONFIG_t ;
struct TYPE_8__ {int hi; scalar_t__ lo; } ;
struct TYPE_11__ {TYPE_1__ ctl; scalar_t__ dar; scalar_t__ devCtl; scalar_t__ sar; } ;


 int dmacHw_ASSERT (int ) ;
 int dmacHw_DESC_FREE ;
 TYPE_7__* dmacHw_DESC_INIT ;
 scalar_t__ dmacHw_DST_ADDRESS_UPDATE_MODE_INC ;
 scalar_t__ dmacHw_DST_BURST_WIDTH_0 ;
 int dmacHw_DST_IS_MEMORY (int) ;
 scalar_t__ dmacHw_FLOW_CONTROL_DMA ;
 TYPE_2__* dmacHw_GET_DESC_RING (void*) ;
 int dmacHw_NEXT_DESC (TYPE_2__*,int ) ;
 int dmacHw_REG_CTL_BLOCK_TS_MASK ;
 scalar_t__ dmacHw_REG_CTL_INT_EN ;
 scalar_t__ dmacHw_REG_CTL_TTFC_MP_PERI ;
 scalar_t__ dmacHw_REG_CTL_TTFC_PM_PERI ;
 scalar_t__ dmacHw_SRC_ADDRESS_UPDATE_MODE_INC ;
 scalar_t__ dmacHw_SRC_BURST_WIDTH_0 ;
 scalar_t__ dmacHw_SRC_TRANSACTION_WIDTH_32 ;


 int pHead ;

int dmacHw_setControlDescriptor(dmacHw_CONFIG_t *pConfig,
    void *pDescriptor,
    uint32_t ctlAddress,
    uint32_t control
    ) {
 dmacHw_DESC_RING_t *pRing = dmacHw_GET_DESC_RING(pDescriptor);

 if (ctlAddress == 0) {
  return -1;
 }


 if ((pRing->pHead->ctl.hi & dmacHw_DESC_FREE) == 0) {
  return -1;
 }

 pRing->pHead->devCtl = control;

 pRing->pHead->sar = (uint32_t) &pRing->pHead->devCtl;
 pRing->pHead->dar = ctlAddress;

 if (pConfig->flowControler == dmacHw_FLOW_CONTROL_DMA) {
  pRing->pHead->ctl.lo = pConfig->transferType |
      dmacHw_SRC_ADDRESS_UPDATE_MODE_INC |
      dmacHw_DST_ADDRESS_UPDATE_MODE_INC |
      dmacHw_SRC_TRANSACTION_WIDTH_32 |
      pConfig->dstMaxTransactionWidth |
      dmacHw_SRC_BURST_WIDTH_0 |
      dmacHw_DST_BURST_WIDTH_0 |
      pConfig->srcMasterInterface |
      pConfig->dstMasterInterface | dmacHw_REG_CTL_INT_EN;
 } else {
  uint32_t transferType = 0;
  switch (pConfig->transferType) {
  case 128:
   transferType = dmacHw_REG_CTL_TTFC_PM_PERI;
   break;
  case 129:
   transferType = dmacHw_REG_CTL_TTFC_MP_PERI;
   break;
  default:
   dmacHw_ASSERT(0);
  }
  pRing->pHead->ctl.lo = transferType |
      dmacHw_SRC_ADDRESS_UPDATE_MODE_INC |
      dmacHw_DST_ADDRESS_UPDATE_MODE_INC |
      dmacHw_SRC_TRANSACTION_WIDTH_32 |
      pConfig->dstMaxTransactionWidth |
      dmacHw_SRC_BURST_WIDTH_0 |
      dmacHw_DST_BURST_WIDTH_0 |
      pConfig->srcMasterInterface |
      pConfig->dstMasterInterface |
      pConfig->flowControler | dmacHw_REG_CTL_INT_EN;
 }


 pRing->pHead->ctl.hi = dmacHw_REG_CTL_BLOCK_TS_MASK & 1;


 if (pRing->pProg == dmacHw_DESC_INIT) {
  pRing->pProg = pRing->pHead;
 }
 pRing->pEnd = pRing->pHead;


 dmacHw_NEXT_DESC(pRing, pHead);


 if (!dmacHw_DST_IS_MEMORY(pConfig->transferType)) {
  pRing->pTail = pRing->pHead;
 }
 return 0;
}
