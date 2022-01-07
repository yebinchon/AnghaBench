
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emac_instance {int link_work; scalar_t__ link_polling; int ndev; } ;


 int PHY_POLL_LINK_OFF ;
 int cancel_rearming_delayed_work (int *) ;
 int netif_carrier_off (int ) ;
 int schedule_delayed_work (int *,int ) ;
 int smp_rmb () ;

__attribute__((used)) static void emac_force_link_update(struct emac_instance *dev)
{
 netif_carrier_off(dev->ndev);
 smp_rmb();
 if (dev->link_polling) {
  cancel_rearming_delayed_work(&dev->link_work);
  if (dev->link_polling)
   schedule_delayed_work(&dev->link_work, PHY_POLL_LINK_OFF);
 }
}
