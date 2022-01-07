
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int dmacHw_CBLK_t ;
struct TYPE_2__ {int module; int channel; } ;


 int chipcHw_REG_BUS_CLOCK_DMAC0 ;
 int chipcHw_REG_BUS_CLOCK_DMAC1 ;
 int chipcHw_busInterfaceClockEnable (int ) ;
 int dmaChannelCount_0 ;
 int dmaChannelCount_1 ;
 int dmacHw_ASSERT (int ) ;
 int dmacHw_GET_NUM_CHANNEL (int) ;
 int dmacHw_MAX_CHANNEL_COUNT ;
 TYPE_1__* dmacHw_gCblk ;
 int memset (void*,int ,int) ;

void dmacHw_initDma(void)
{

 uint32_t i = 0;

 dmaChannelCount_0 = dmacHw_GET_NUM_CHANNEL(0);
 dmaChannelCount_1 = dmacHw_GET_NUM_CHANNEL(1);


 chipcHw_busInterfaceClockEnable(chipcHw_REG_BUS_CLOCK_DMAC0);
 chipcHw_busInterfaceClockEnable(chipcHw_REG_BUS_CLOCK_DMAC1);

 if ((dmaChannelCount_0 + dmaChannelCount_1) > dmacHw_MAX_CHANNEL_COUNT) {
  dmacHw_ASSERT(0);
 }

 memset((void *)dmacHw_gCblk, 0,
        sizeof(dmacHw_CBLK_t) * (dmaChannelCount_0 + dmaChannelCount_1));
 for (i = 0; i < dmaChannelCount_0; i++) {
  dmacHw_gCblk[i].module = 0;
  dmacHw_gCblk[i].channel = i;
 }
 for (i = 0; i < dmaChannelCount_1; i++) {
  dmacHw_gCblk[i + dmaChannelCount_0].module = 1;
  dmacHw_gCblk[i + dmaChannelCount_0].channel = i;
 }
}
