
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct swStat {int mem_freed; } ;
struct TYPE_6__ {scalar_t__ intr_type; } ;
struct TYPE_5__ {TYPE_1__* stats_info; } ;
struct s2io_nic {int num_entries; scalar_t__ s2io_entries; scalar_t__ entries; TYPE_3__ config; scalar_t__ last_link_state; TYPE_2__ mac_control; } ;
struct s2io_msix_entry {int dummy; } ;
struct net_device {int dev_addr; int name; } ;
struct msix_entry {int dummy; } ;
struct TYPE_4__ {struct swStat sw_stat; } ;


 int DBG_PRINT (int ,char*,...) ;
 int ENODEV ;
 int ERR_DBG ;
 scalar_t__ FAILURE ;
 scalar_t__ MSI_X ;
 scalar_t__ do_s2io_prog_unicast (struct net_device*,int ) ;
 int kfree (scalar_t__) ;
 struct s2io_nic* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int s2io_card_down (struct s2io_nic*) ;
 int s2io_card_up (struct s2io_nic*) ;
 int s2io_start_all_tx_queue (struct s2io_nic*) ;

__attribute__((used)) static int s2io_open(struct net_device *dev)
{
 struct s2io_nic *sp = netdev_priv(dev);
 struct swStat *swstats = &sp->mac_control.stats_info->sw_stat;
 int err = 0;





 netif_carrier_off(dev);
 sp->last_link_state = 0;


 err = s2io_card_up(sp);
 if (err) {
  DBG_PRINT(ERR_DBG, "%s: H/W initialization failed\n",
     dev->name);
  goto hw_init_failed;
 }

 if (do_s2io_prog_unicast(dev, dev->dev_addr) == FAILURE) {
  DBG_PRINT(ERR_DBG, "Set Mac Address Failed\n");
  s2io_card_down(sp);
  err = -ENODEV;
  goto hw_init_failed;
 }
 s2io_start_all_tx_queue(sp);
 return 0;

hw_init_failed:
 if (sp->config.intr_type == MSI_X) {
  if (sp->entries) {
   kfree(sp->entries);
   swstats->mem_freed += sp->num_entries *
    sizeof(struct msix_entry);
  }
  if (sp->s2io_entries) {
   kfree(sp->s2io_entries);
   swstats->mem_freed += sp->num_entries *
    sizeof(struct s2io_msix_entry);
  }
 }
 return err;
}
