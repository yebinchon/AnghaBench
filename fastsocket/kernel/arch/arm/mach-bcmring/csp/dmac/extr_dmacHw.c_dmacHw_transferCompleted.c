
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int dmacHw_TRANSFER_STATUS_e ;
typedef int dmacHw_HANDLE_t ;
struct TYPE_3__ {int channel; int module; } ;
typedef TYPE_1__ dmacHw_CBLK_t ;


 scalar_t__ CHANNEL_BUSY (int ,int) ;
 TYPE_1__* dmacHw_HANDLE_TO_CBLK (int ) ;
 int dmacHw_REG_INT_RAW_ERROR (int ) ;
 int dmacHw_TRANSFER_STATUS_BUSY ;
 int dmacHw_TRANSFER_STATUS_DONE ;
 int dmacHw_TRANSFER_STATUS_ERROR ;

dmacHw_TRANSFER_STATUS_e dmacHw_transferCompleted(dmacHw_HANDLE_t handle
    ) {
 dmacHw_CBLK_t *pCblk = dmacHw_HANDLE_TO_CBLK(handle);

 if (CHANNEL_BUSY(pCblk->module, pCblk->channel)) {
  return dmacHw_TRANSFER_STATUS_BUSY;
 } else if (dmacHw_REG_INT_RAW_ERROR(pCblk->module) &
     (0x00000001 << pCblk->channel)) {
  return dmacHw_TRANSFER_STATUS_ERROR;
 }

 return dmacHw_TRANSFER_STATUS_DONE;
}
