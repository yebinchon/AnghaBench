
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int dmacHw_HANDLE_t ;
struct TYPE_3__ {int module; int channel; } ;
typedef TYPE_1__ dmacHw_CBLK_t ;


 int dmacHw_BLOCK_INT_CLEAR (int,int) ;
 int dmacHw_BLOCK_INT_DISABLE (int,int) ;
 int dmacHw_DMA_ENABLE (int) ;
 int dmacHw_DTRAN_INT_DISABLE (int,int) ;
 int dmacHw_ERROR_INT_CLEAR (int,int) ;
 int dmacHw_ERROR_INT_DISABLE (int,int) ;
 TYPE_1__* dmacHw_HANDLE_TO_CBLK (int ) ;
 int dmacHw_RESET_CONFIG_HI (int,int) ;
 int dmacHw_RESET_CONFIG_LO (int,int) ;
 int dmacHw_RESET_CONTROL_HI (int,int) ;
 int dmacHw_RESET_CONTROL_LO (int,int) ;
 int dmacHw_STRAN_INT_DISABLE (int,int) ;
 int dmacHw_TRAN_INT_CLEAR (int,int) ;
 int dmacHw_TRAN_INT_DISABLE (int,int) ;
 int memset (void*,int ,int) ;

int dmacHw_initChannel(dmacHw_HANDLE_t handle
    ) {
 dmacHw_CBLK_t *pCblk = dmacHw_HANDLE_TO_CBLK(handle);
 int module = pCblk->module;
 int channel = pCblk->channel;


 memset((void *)pCblk, 0, sizeof(dmacHw_CBLK_t));
 pCblk->module = module;
 pCblk->channel = channel;


 dmacHw_DMA_ENABLE(pCblk->module);

 dmacHw_RESET_CONTROL_LO(pCblk->module, pCblk->channel);
 dmacHw_RESET_CONTROL_HI(pCblk->module, pCblk->channel);
 dmacHw_RESET_CONFIG_LO(pCblk->module, pCblk->channel);
 dmacHw_RESET_CONFIG_HI(pCblk->module, pCblk->channel);


 dmacHw_TRAN_INT_CLEAR(pCblk->module, pCblk->channel);
 dmacHw_BLOCK_INT_CLEAR(pCblk->module, pCblk->channel);
 dmacHw_ERROR_INT_CLEAR(pCblk->module, pCblk->channel);


 dmacHw_TRAN_INT_DISABLE(pCblk->module, pCblk->channel);
 dmacHw_BLOCK_INT_DISABLE(pCblk->module, pCblk->channel);
 dmacHw_STRAN_INT_DISABLE(pCblk->module, pCblk->channel);
 dmacHw_DTRAN_INT_DISABLE(pCblk->module, pCblk->channel);
 dmacHw_ERROR_INT_DISABLE(pCblk->module, pCblk->channel);

 return 0;
}
