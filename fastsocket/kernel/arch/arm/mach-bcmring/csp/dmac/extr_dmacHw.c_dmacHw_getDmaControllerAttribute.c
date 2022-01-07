
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int dmacHw_HANDLE_t ;
typedef int dmacHw_CONTROLLER_ATTRIB_e ;
struct TYPE_3__ {int channel; int module; } ;
typedef TYPE_1__ dmacHw_CBLK_t ;


 int GetFifoSize (int ) ;
 int dmacHw_ASSERT (int ) ;





 int dmacHw_GET_CHANNEL_DATA_WIDTH (int ,int ) ;
 int dmacHw_GET_MAX_BLOCK_SIZE (int ,int ) ;
 int dmacHw_GET_NUM_CHANNEL (int ) ;
 int dmacHw_GET_NUM_INTERFACE (int ) ;
 TYPE_1__* dmacHw_HANDLE_TO_CBLK (int ) ;

uint32_t dmacHw_getDmaControllerAttribute(dmacHw_HANDLE_t handle,
       dmacHw_CONTROLLER_ATTRIB_e attr
    ) {
 dmacHw_CBLK_t *pCblk = dmacHw_HANDLE_TO_CBLK(handle);

 switch (attr) {
 case 129:
  return dmacHw_GET_NUM_CHANNEL(pCblk->module);
 case 130:
  return (1 <<
    (dmacHw_GET_MAX_BLOCK_SIZE
     (pCblk->module, pCblk->module) + 2)) - 8;
 case 128:
  return dmacHw_GET_NUM_INTERFACE(pCblk->module);
 case 132:
  return 32 << dmacHw_GET_CHANNEL_DATA_WIDTH(pCblk->module,
          pCblk->channel);
 case 131:
  return GetFifoSize(handle);
 }
 dmacHw_ASSERT(0);
 return 0;
}
