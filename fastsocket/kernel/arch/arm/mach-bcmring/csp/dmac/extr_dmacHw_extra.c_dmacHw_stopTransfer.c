
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int dmacHw_HANDLE_t ;
struct TYPE_3__ {int channel; int module; } ;
typedef TYPE_1__ dmacHw_CBLK_t ;


 int dmacHw_DMA_STOP (int ,int ) ;
 TYPE_1__* dmacHw_HANDLE_TO_CBLK (int ) ;

void dmacHw_stopTransfer(dmacHw_HANDLE_t handle
    ) {
 dmacHw_CBLK_t *pCblk;

 pCblk = dmacHw_HANDLE_TO_CBLK(handle);


 dmacHw_DMA_STOP(pCblk->module, pCblk->channel);
}
