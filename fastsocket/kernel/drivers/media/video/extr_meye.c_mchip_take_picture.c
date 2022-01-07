
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mchip_dmahandle; } ;


 int MCHIP_HIC_CMD ;
 int MCHIP_HIC_CMD_START ;
 int MCHIP_HIC_MODE ;
 int MCHIP_HIC_MODE_STILL_CAP ;
 int MCHIP_HIC_STATUS ;
 int MCHIP_HIC_STATUS_IDLE ;
 scalar_t__ mchip_delay (int ,int ) ;
 int mchip_dma_setup (int ) ;
 int mchip_hic_stop () ;
 int mchip_set (int ,int ) ;
 int mchip_subsample () ;
 TYPE_1__ meye ;
 int msleep (int) ;

__attribute__((used)) static void mchip_take_picture(void)
{
 int i;

 mchip_hic_stop();
 mchip_subsample();
 mchip_dma_setup(meye.mchip_dmahandle);

 mchip_set(MCHIP_HIC_MODE, MCHIP_HIC_MODE_STILL_CAP);
 mchip_set(MCHIP_HIC_CMD, MCHIP_HIC_CMD_START);

 mchip_delay(MCHIP_HIC_CMD, 0);

 for (i = 0; i < 100; ++i) {
  if (mchip_delay(MCHIP_HIC_STATUS, MCHIP_HIC_STATUS_IDLE))
   break;
  msleep(1);
 }
}
