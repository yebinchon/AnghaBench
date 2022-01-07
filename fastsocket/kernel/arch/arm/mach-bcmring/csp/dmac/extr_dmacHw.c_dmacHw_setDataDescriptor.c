
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
typedef int dmacHw_TRANSACTION_WIDTH_e ;
struct TYPE_8__ {int hi; int lo; } ;
struct TYPE_9__ {int sar; int dar; scalar_t__ llp; TYPE_1__ ctl; scalar_t__ devCtl; } ;
typedef TYPE_2__ dmacHw_DESC_t ;
struct TYPE_10__ {int num; TYPE_2__* pHead; TYPE_2__* pTail; TYPE_2__* pEnd; TYPE_2__* pProg; } ;
typedef TYPE_3__ dmacHw_DESC_RING_t ;
struct TYPE_11__ {int dstMaxTransactionWidth; int srcMaxTransactionWidth; int srcGatherWidth; int dstScatterWidth; int maxDataPerBlock; int transferType; scalar_t__ flowControler; int srcUpdate; int dstUpdate; int srcMaxBurstWidth; int dstMaxBurstWidth; int srcMasterInterface; int dstMasterInterface; int dstScatterJump; int srcGatherJump; } ;
typedef TYPE_4__ dmacHw_CONFIG_t ;


 int dmacHw_ADDRESS_MASK (int) ;
 int dmacHw_ASSERT (int) ;
 int dmacHw_DESC_FREE ;
 TYPE_2__* dmacHw_DESC_INIT ;
 int dmacHw_DST_IS_MEMORY (int) ;
 int dmacHw_DST_TRANSACTION_WIDTH_8 ;
 scalar_t__ dmacHw_FLOW_CONTROL_DMA ;
 scalar_t__ dmacHw_FREE_USER_MEMORY ;
 TYPE_3__* dmacHw_GET_DESC_RING (void*) ;
 int dmacHw_GetNextTrWidth (int) ;
 int dmacHw_GetTrWidthInBytes (int) ;
 int dmacHw_MAX_BLOCKSIZE ;
 int dmacHw_REG_CTL_BLOCK_TS_MASK ;
 int dmacHw_REG_CTL_DS_ENABLE ;
 int dmacHw_REG_CTL_INT_EN ;
 int dmacHw_REG_CTL_LLP_DST_EN ;
 int dmacHw_REG_CTL_LLP_SRC_EN ;
 int dmacHw_REG_CTL_SG_ENABLE ;
 int dmacHw_REG_CTL_TTFC_MP_PERI ;
 int dmacHw_REG_CTL_TTFC_PM_PERI ;
 int dmacHw_SRC_TRANSACTION_WIDTH_8 ;





int dmacHw_setDataDescriptor(dmacHw_CONFIG_t *pConfig,
        void *pDescriptor,
        void *pSrcAddr,
        void *pDstAddr,
        size_t dataLen
    ) {
 dmacHw_TRANSACTION_WIDTH_e dstTrWidth;
 dmacHw_TRANSACTION_WIDTH_e srcTrWidth;
 dmacHw_DESC_RING_t *pRing = dmacHw_GET_DESC_RING(pDescriptor);
 dmacHw_DESC_t *pStart;
 dmacHw_DESC_t *pProg;
 int srcTs = 0;
 int blkTs = 0;
 int oddSize = 0;
 int descCount = 0;
 int count = 0;
 int dstTrSize = 0;
 int srcTrSize = 0;
 uint32_t maxBlockSize = dmacHw_MAX_BLOCKSIZE;

 dstTrSize = dmacHw_GetTrWidthInBytes(pConfig->dstMaxTransactionWidth);
 srcTrSize = dmacHw_GetTrWidthInBytes(pConfig->srcMaxTransactionWidth);


 if ((pSrcAddr == ((void*)0)) || (pDstAddr == ((void*)0)) || (dataLen == 0)) {

  return -1;
 }


 if ((pConfig->srcGatherWidth % srcTrSize)
     || (pConfig->dstScatterWidth % dstTrSize)) {
  return -2;
 }
 dstTrWidth = pConfig->dstMaxTransactionWidth;
 while (dmacHw_ADDRESS_MASK(dstTrSize) & (uint32_t) pDstAddr) {
  dstTrWidth = dmacHw_GetNextTrWidth(dstTrWidth);
  dstTrSize = dmacHw_GetTrWidthInBytes(dstTrWidth);
 }


 srcTrWidth = pConfig->srcMaxTransactionWidth;
 while (dmacHw_ADDRESS_MASK(srcTrSize) & (uint32_t) pSrcAddr) {
  srcTrWidth = dmacHw_GetNextTrWidth(srcTrWidth);
  srcTrSize = dmacHw_GetTrWidthInBytes(srcTrWidth);
 }


 if (pConfig->maxDataPerBlock
     && ((pConfig->maxDataPerBlock / srcTrSize) <
  dmacHw_MAX_BLOCKSIZE)) {
  maxBlockSize = pConfig->maxDataPerBlock / srcTrSize;
 }


 srcTs = dataLen / srcTrSize;

 if (srcTs && (dstTrSize > srcTrSize)) {
  oddSize = dataLen % dstTrSize;

  srcTs = srcTs - (oddSize / srcTrSize);
 } else {
  oddSize = dataLen % srcTrSize;
 }

 if (oddSize) {
  descCount++;
 }

 if (srcTs) {
  descCount += ((srcTs - 1) / maxBlockSize) + 1;
 }


 pProg = pRing->pHead;
 for (count = 0; (descCount <= pRing->num) && (count < descCount);
      count++) {
  if ((pProg->ctl.hi & dmacHw_DESC_FREE) == 0) {

   return -3;
  }
  pProg = (dmacHw_DESC_t *) pProg->llp;
 }


 pStart = pProg = pRing->pHead;

 while (count) {

  pProg->ctl.lo = 0;

  if (pConfig->srcGatherWidth) {
   pProg->ctl.lo |= dmacHw_REG_CTL_SG_ENABLE;
  }

  if (pConfig->dstScatterWidth) {
   pProg->ctl.lo |= dmacHw_REG_CTL_DS_ENABLE;
  }

  pProg->sar = (uint32_t) pSrcAddr;
  pProg->dar = (uint32_t) pDstAddr;

  if (pProg == pRing->pHead) {
   pProg->devCtl = dmacHw_FREE_USER_MEMORY;
  } else {
   pProg->devCtl = 0;
  }

  blkTs = srcTs;


  if (count == 1) {

   pProg->ctl.lo &=
       ~(dmacHw_REG_CTL_LLP_DST_EN |
         dmacHw_REG_CTL_LLP_SRC_EN);

   if (oddSize) {

    switch (pConfig->transferType) {
    case 129:
     dstTrWidth =
         dmacHw_DST_TRANSACTION_WIDTH_8;
     blkTs =
         (oddSize / srcTrSize) +
         ((oddSize % srcTrSize) ? 1 : 0);
     break;
    case 130:
     srcTrWidth =
         dmacHw_SRC_TRANSACTION_WIDTH_8;
     blkTs = oddSize;
     break;
    case 131:
     srcTrWidth =
         dmacHw_SRC_TRANSACTION_WIDTH_8;
     dstTrWidth =
         dmacHw_DST_TRANSACTION_WIDTH_8;
     blkTs = oddSize;
     break;
    case 128:

     break;
    }
   } else {
    srcTs -= blkTs;
   }
  } else {
   if (srcTs / maxBlockSize) {
    blkTs = maxBlockSize;
   }

   srcTs -= blkTs;
  }

  dmacHw_ASSERT(blkTs > 0);

  if (pConfig->flowControler == dmacHw_FLOW_CONTROL_DMA) {
   pProg->ctl.lo |= pConfig->transferType |
       pConfig->srcUpdate |
       pConfig->dstUpdate |
       srcTrWidth |
       dstTrWidth |
       pConfig->srcMaxBurstWidth |
       pConfig->dstMaxBurstWidth |
       pConfig->srcMasterInterface |
       pConfig->dstMasterInterface | dmacHw_REG_CTL_INT_EN;
  } else {
   uint32_t transferType = 0;
   switch (pConfig->transferType) {
   case 129:
    transferType = dmacHw_REG_CTL_TTFC_PM_PERI;
    break;
   case 130:
    transferType = dmacHw_REG_CTL_TTFC_MP_PERI;
    break;
   default:
    dmacHw_ASSERT(0);
   }
   pProg->ctl.lo |= transferType |
       pConfig->srcUpdate |
       pConfig->dstUpdate |
       srcTrWidth |
       dstTrWidth |
       pConfig->srcMaxBurstWidth |
       pConfig->dstMaxBurstWidth |
       pConfig->srcMasterInterface |
       pConfig->dstMasterInterface | dmacHw_REG_CTL_INT_EN;
  }


  pProg->ctl.hi = blkTs & dmacHw_REG_CTL_BLOCK_TS_MASK;

  if (count > 1) {

   pProg = (dmacHw_DESC_t *) pProg->llp;


   switch (pConfig->transferType) {
   case 129:
    if (pConfig->dstScatterWidth) {
     pDstAddr =
         (char *)pDstAddr +
         blkTs * srcTrSize +
         (((blkTs * srcTrSize) /
           pConfig->dstScatterWidth) *
          pConfig->dstScatterJump);
    } else {
     pDstAddr =
         (char *)pDstAddr +
         blkTs * srcTrSize;
    }
    break;
   case 130:
    if (pConfig->srcGatherWidth) {
     pSrcAddr =
         (char *)pDstAddr +
         blkTs * srcTrSize +
         (((blkTs * srcTrSize) /
           pConfig->srcGatherWidth) *
          pConfig->srcGatherJump);
    } else {
     pSrcAddr =
         (char *)pSrcAddr +
         blkTs * srcTrSize;
    }
    break;
   case 131:
    if (pConfig->dstScatterWidth) {
     pDstAddr =
         (char *)pDstAddr +
         blkTs * srcTrSize +
         (((blkTs * srcTrSize) /
           pConfig->dstScatterWidth) *
          pConfig->dstScatterJump);
    } else {
     pDstAddr =
         (char *)pDstAddr +
         blkTs * srcTrSize;
    }

    if (pConfig->srcGatherWidth) {
     pSrcAddr =
         (char *)pDstAddr +
         blkTs * srcTrSize +
         (((blkTs * srcTrSize) /
           pConfig->srcGatherWidth) *
          pConfig->srcGatherJump);
    } else {
     pSrcAddr =
         (char *)pSrcAddr +
         blkTs * srcTrSize;
    }
    break;
   case 128:

    break;
   default:
    dmacHw_ASSERT(0);
   }
  } else {

   dmacHw_ASSERT(srcTs == 0);
  }
  count--;
 }


 if (pRing->pProg == dmacHw_DESC_INIT) {
  pRing->pProg = pStart;
 }

 pRing->pEnd = pProg;

 pRing->pHead = (dmacHw_DESC_t *) pProg->llp;



 if (!dmacHw_DST_IS_MEMORY(pConfig->transferType)) {
  pRing->pTail = pRing->pHead;
 }
 return 0;
}
