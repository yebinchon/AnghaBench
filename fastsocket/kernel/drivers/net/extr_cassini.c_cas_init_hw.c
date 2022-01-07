
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cas {scalar_t__ lstate; int dev; scalar_t__ timer_ticks; } ;


 int cas_begin_auto_negotiation (struct cas*,int *) ;
 int cas_init_dma (struct cas*) ;
 int cas_init_mac (struct cas*) ;
 int cas_init_pause_thresholds (struct cas*) ;
 int cas_phy_init (struct cas*) ;
 int cas_set_link_modes (struct cas*) ;
 scalar_t__ link_up ;
 int netif_carrier_on (int ) ;

__attribute__((used)) static void cas_init_hw(struct cas *cp, int restart_link)
{
 if (restart_link)
  cas_phy_init(cp);

 cas_init_pause_thresholds(cp);
 cas_init_mac(cp);
 cas_init_dma(cp);

 if (restart_link) {

  cp->timer_ticks = 0;
  cas_begin_auto_negotiation(cp, ((void*)0));
 } else if (cp->lstate == link_up) {
  cas_set_link_modes(cp);
  netif_carrier_on(cp->dev);
 }
}
