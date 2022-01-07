
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mchip_mode; int mchip_dmahandle; } ;


 int MCHIP_HIC_CMD ;
 int MCHIP_HIC_CMD_START ;
 int MCHIP_HIC_MODE ;
 int MCHIP_HIC_MODE_CONT_OUT ;
 int mchip_delay (int ,int ) ;
 int mchip_dma_setup (int ) ;
 int mchip_hic_stop () ;
 int mchip_set (int ,int ) ;
 int mchip_set_framerate () ;
 int mchip_subsample () ;
 TYPE_1__ meye ;

__attribute__((used)) static void mchip_continuous_start(void)
{
 mchip_hic_stop();
 mchip_subsample();
 mchip_set_framerate();
 mchip_dma_setup(meye.mchip_dmahandle);

 meye.mchip_mode = MCHIP_HIC_MODE_CONT_OUT;

 mchip_set(MCHIP_HIC_MODE, MCHIP_HIC_MODE_CONT_OUT);
 mchip_set(MCHIP_HIC_CMD, MCHIP_HIC_CMD_START);

 mchip_delay(MCHIP_HIC_CMD, 0);
}
