
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int dmacHw_INTERRUPT_STATUS_e ;
typedef int dmacHw_HANDLE_t ;
struct TYPE_3__ {int channel; int module; } ;
typedef TYPE_1__ dmacHw_CBLK_t ;


 TYPE_1__* dmacHw_HANDLE_TO_CBLK (int ) ;
 int dmacHw_INTERRUPT_STATUS_BLOCK ;
 int dmacHw_INTERRUPT_STATUS_ERROR ;
 int dmacHw_INTERRUPT_STATUS_NONE ;
 int dmacHw_INTERRUPT_STATUS_TRANS ;
 int dmacHw_REG_INT_STAT_BLOCK (int ) ;
 int dmacHw_REG_INT_STAT_ERROR (int ) ;
 int dmacHw_REG_INT_STAT_TRAN (int ) ;

dmacHw_INTERRUPT_STATUS_e dmacHw_getInterruptStatus(dmacHw_HANDLE_t handle
    ) {
 dmacHw_CBLK_t *pCblk = dmacHw_HANDLE_TO_CBLK(handle);
 dmacHw_INTERRUPT_STATUS_e status = dmacHw_INTERRUPT_STATUS_NONE;

 if (dmacHw_REG_INT_STAT_TRAN(pCblk->module) &
     ((0x00000001 << pCblk->channel))) {
  status |= dmacHw_INTERRUPT_STATUS_TRANS;
 }
 if (dmacHw_REG_INT_STAT_BLOCK(pCblk->module) &
     ((0x00000001 << pCblk->channel))) {
  status |= dmacHw_INTERRUPT_STATUS_BLOCK;
 }
 if (dmacHw_REG_INT_STAT_ERROR(pCblk->module) &
     ((0x00000001 << pCblk->channel))) {
  status |= dmacHw_INTERRUPT_STATUS_ERROR;
 }

 return status;
}
