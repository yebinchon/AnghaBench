
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int dmacHw_HANDLE_t ;
struct TYPE_10__ {TYPE_2__* pTail; TYPE_2__* pHead; } ;
typedef TYPE_3__ dmacHw_DESC_RING_t ;
struct TYPE_11__ {scalar_t__ transferMode; } ;
typedef TYPE_4__ dmacHw_CONFIG_t ;
struct TYPE_8__ {int hi; int lo; } ;
struct TYPE_9__ {size_t sstat; TYPE_1__ ctl; scalar_t__ dar; } ;


 scalar_t__ DmaIsFlowController (void*) ;
 int dmacHw_ASSERT (int ) ;
 int dmacHw_DESC_FREE ;
 TYPE_3__* dmacHw_GET_DESC_RING (void*) ;
 int dmacHw_NEXT_DESC (TYPE_3__*,int ) ;
 size_t dmacHw_REG_CTL_BLOCK_TS_MASK ;




 int dmacHw_REG_CTL_SRC_TR_WIDTH_MASK ;
 scalar_t__ dmacHw_TRANSFER_MODE_CONTINUOUS ;
 int pTail ;

int dmacHw_readTransferredData(dmacHw_HANDLE_t handle,
          dmacHw_CONFIG_t *pConfig,
          void *pDescriptor,
          void **ppBbuf,
          size_t *pLlen
    ) {
 dmacHw_DESC_RING_t *pRing = dmacHw_GET_DESC_RING(pDescriptor);

 (void)handle;

 if (pConfig->transferMode != dmacHw_TRANSFER_MODE_CONTINUOUS) {
  if (((pRing->pTail->ctl.hi & dmacHw_DESC_FREE) == 0) ||
      (pRing->pTail == pRing->pHead)
      ) {

   *ppBbuf = (char *)((void*)0);
   *pLlen = 0;

   return 0;
  }
 }


 *ppBbuf = (char *)pRing->pTail->dar;


 if (DmaIsFlowController(pDescriptor)) {
  uint32_t srcTrSize = 0;

  switch (pRing->pTail->ctl.lo & dmacHw_REG_CTL_SRC_TR_WIDTH_MASK) {
  case 128:
   srcTrSize = 1;
   break;
  case 131:
   srcTrSize = 2;
   break;
  case 130:
   srcTrSize = 4;
   break;
  case 129:
   srcTrSize = 8;
   break;
  default:
   dmacHw_ASSERT(0);
  }

  *pLlen =
      (pRing->pTail->ctl.hi & dmacHw_REG_CTL_BLOCK_TS_MASK) *
      srcTrSize;
 } else {

  *pLlen = pRing->pTail->sstat;
 }


 dmacHw_NEXT_DESC(pRing, pTail);

 return 1;
}
