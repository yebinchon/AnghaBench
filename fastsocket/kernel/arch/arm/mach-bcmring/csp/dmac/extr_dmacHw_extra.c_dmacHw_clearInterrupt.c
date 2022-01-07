
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int dmacHw_HANDLE_t ;
struct TYPE_3__ {int channel; int module; } ;
typedef TYPE_1__ dmacHw_CBLK_t ;


 int dmacHw_BLOCK_INT_CLEAR (int ,int ) ;
 int dmacHw_ERROR_INT_CLEAR (int ,int ) ;
 TYPE_1__* dmacHw_HANDLE_TO_CBLK (int ) ;
 int dmacHw_TRAN_INT_CLEAR (int ,int ) ;

void dmacHw_clearInterrupt(dmacHw_HANDLE_t handle
    ) {
 dmacHw_CBLK_t *pCblk = dmacHw_HANDLE_TO_CBLK(handle);

 dmacHw_TRAN_INT_CLEAR(pCblk->module, pCblk->channel);
 dmacHw_BLOCK_INT_CLEAR(pCblk->module, pCblk->channel);
 dmacHw_ERROR_INT_CLEAR(pCblk->module, pCblk->channel);
}
