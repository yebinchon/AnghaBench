
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int dmacHw_TRANSACTION_WIDTH_e ;
struct TYPE_3__ {int srcGatherWidth; int dstScatterWidth; int maxDataPerBlock; int srcMaxTransactionWidth; int dstMaxTransactionWidth; } ;
typedef TYPE_1__ dmacHw_CONFIG_t ;


 int dmacHw_ADDRESS_MASK (int) ;
 int dmacHw_GetNextTrWidth (int ) ;
 int dmacHw_GetTrWidthInBytes (int ) ;
 int dmacHw_MAX_BLOCKSIZE ;

int dmacHw_calculateDescriptorCount(dmacHw_CONFIG_t *pConfig,
        void *pSrcAddr,
        void *pDstAddr,
        size_t dataLen
    ) {
 int srcTs = 0;
 int oddSize = 0;
 int descCount = 0;
 int dstTrSize = 0;
 int srcTrSize = 0;
 uint32_t maxBlockSize = dmacHw_MAX_BLOCKSIZE;
 dmacHw_TRANSACTION_WIDTH_e dstTrWidth;
 dmacHw_TRANSACTION_WIDTH_e srcTrWidth;

 dstTrSize = dmacHw_GetTrWidthInBytes(pConfig->dstMaxTransactionWidth);
 srcTrSize = dmacHw_GetTrWidthInBytes(pConfig->srcMaxTransactionWidth);


 if ((pSrcAddr == ((void*)0)) || (pDstAddr == ((void*)0)) || (dataLen == 0)) {

  return -1;
 }


 if (pConfig->srcGatherWidth % srcTrSize
     || pConfig->dstScatterWidth % dstTrSize) {
  return -1;
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

 return descCount;
}
