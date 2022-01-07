
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int dmacHw_HANDLE_t ;
struct TYPE_5__ {scalar_t__ pEnd; } ;
typedef TYPE_1__ dmacHw_DESC_RING_t ;
struct TYPE_6__ {int channel; int module; } ;
typedef TYPE_2__ dmacHw_CBLK_t ;


 int CHANNEL_BUSY (int ,int ) ;
 TYPE_1__* dmacHw_GET_DESC_RING (void*) ;
 TYPE_2__* dmacHw_HANDLE_TO_CBLK (int ) ;

uint32_t dmacHw_descriptorPending(dmacHw_HANDLE_t handle,
      void *pDescriptor
    ) {
 dmacHw_CBLK_t *pCblk = dmacHw_HANDLE_TO_CBLK(handle);
 dmacHw_DESC_RING_t *pRing = dmacHw_GET_DESC_RING(pDescriptor);


 if (!CHANNEL_BUSY(pCblk->module, pCblk->channel)) {

  if (pRing->pEnd) {

   return 1;
  }
 }
 return 0;
}
