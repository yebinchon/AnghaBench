
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int hi; } ;
struct TYPE_7__ {scalar_t__ llp; TYPE_1__ ctl; } ;
typedef TYPE_2__ dmacHw_DESC_t ;
struct TYPE_8__ {int srcMaxTransactionWidth; } ;
typedef TYPE_3__ dmacHw_CONFIG_t ;
struct TYPE_9__ {TYPE_2__* pHead; } ;


 TYPE_5__* dmacHw_GET_DESC_RING (void*) ;
 int dmacHw_GetTrWidthInBytes (int ) ;
 int dmacHw_REG_CTL_BLOCK_TS_MASK ;

void dmacHw_setDataLength(dmacHw_CONFIG_t *pConfig,
     void *pDescriptor,
     size_t dataLen
    ) {
 dmacHw_DESC_t *pProg;
 dmacHw_DESC_t *pHead;
 int srcTs = 0;
 int srcTrSize = 0;

 pHead = (dmacHw_GET_DESC_RING(pDescriptor))->pHead;
 pProg = pHead;

 srcTrSize = dmacHw_GetTrWidthInBytes(pConfig->srcMaxTransactionWidth);
 srcTs = dataLen / srcTrSize;
 do {
  pProg->ctl.hi = srcTs & dmacHw_REG_CTL_BLOCK_TS_MASK;
  pProg = (dmacHw_DESC_t *) pProg->llp;
 } while (pProg != pHead);
}
