
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcms_hardware {TYPE_1__* band; int * di; int now; int up; } ;
struct brcms_c_info {struct brcms_hardware* hw; } ;
struct TYPE_2__ {int pi; } ;


 size_t RX_FIFO ;
 int brcms_b_fifoerrors (struct brcms_hardware*) ;
 int dma_rxfill (int ) ;
 int wlc_phy_watchdog (int ) ;

__attribute__((used)) static void brcms_b_watchdog(struct brcms_c_info *wlc)
{
 struct brcms_hardware *wlc_hw = wlc->hw;

 if (!wlc_hw->up)
  return;


 wlc_hw->now++;


 brcms_b_fifoerrors(wlc_hw);


 dma_rxfill(wlc->hw->di[RX_FIFO]);

 wlc_phy_watchdog(wlc_hw->band->pi);
}
