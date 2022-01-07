
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int dmacHw_HANDLE_t ;
struct TYPE_3__ {int channel; int module; } ;


 size_t dmaChannelCount_0 ;
 size_t dmaChannelCount_1 ;
 int dmacHw_CBLK_TO_HANDLE (TYPE_1__*) ;
 int dmacHw_REG_INT_STAT_BLOCK (int ) ;
 int dmacHw_REG_INT_STAT_ERROR (int ) ;
 int dmacHw_REG_INT_STAT_TRAN (int ) ;
 TYPE_1__* dmacHw_gCblk ;

dmacHw_HANDLE_t dmacHw_getInterruptSource(void)
{
 uint32_t i;

 for (i = 0; i < dmaChannelCount_0 + dmaChannelCount_1; i++) {
  if ((dmacHw_REG_INT_STAT_TRAN(dmacHw_gCblk[i].module) &
       ((0x00000001 << dmacHw_gCblk[i].channel)))
      || (dmacHw_REG_INT_STAT_BLOCK(dmacHw_gCblk[i].module) &
   ((0x00000001 << dmacHw_gCblk[i].channel)))
      || (dmacHw_REG_INT_STAT_ERROR(dmacHw_gCblk[i].module) &
   ((0x00000001 << dmacHw_gCblk[i].channel)))
      ) {
   return dmacHw_CBLK_TO_HANDLE(&dmacHw_gCblk[i]);
  }
 }
 return dmacHw_CBLK_TO_HANDLE(((void*)0));
}
