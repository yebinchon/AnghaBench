
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct nic {scalar_t__ mac; int flags; int watchdog; int netdev; int cmd_lock; TYPE_2__* csr; int mii; } ;
struct ethtool_cmd {scalar_t__ duplex; int cmd; } ;
struct TYPE_3__ {int cmd_hi; } ;
struct TYPE_4__ {TYPE_1__ scb; } ;


 scalar_t__ DUPLEX_FULL ;
 scalar_t__ DUPLEX_HALF ;
 scalar_t__ E100_WATCHDOG_PERIOD ;
 int ETHTOOL_GSET ;
 int KERN_DEBUG ;
 scalar_t__ SPEED_10 ;
 scalar_t__ SPEED_100 ;
 int e100_adjust_adaptive_ifs (struct nic*,scalar_t__,scalar_t__) ;
 int e100_set_multicast_list (int ) ;
 int e100_update_stats (struct nic*) ;
 int e100_write_flush (struct nic*) ;
 scalar_t__ ethtool_cmd_speed (struct ethtool_cmd*) ;
 int ich ;
 int ich_10h_workaround ;
 int ioread8 (int *) ;
 int iowrite8 (int,int *) ;
 int irq_sw_gen ;
 scalar_t__ jiffies ;
 scalar_t__ mac_82557_D100_C ;
 int mii_check_link (int *) ;
 int mii_ethtool_gset (int *,struct ethtool_cmd*) ;
 scalar_t__ mii_link_ok (int *) ;
 int mod_timer (int *,int ) ;
 int netdev_info (int ,char*,...) ;
 scalar_t__ netif_carrier_ok (int ) ;
 int netif_printk (struct nic*,int ,int ,int ,char*,scalar_t__) ;
 int round_jiffies (scalar_t__) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int timer ;

__attribute__((used)) static void e100_watchdog(unsigned long data)
{
 struct nic *nic = (struct nic *)data;
 struct ethtool_cmd cmd = { .cmd = ETHTOOL_GSET };
 u32 speed;

 netif_printk(nic, timer, KERN_DEBUG, nic->netdev,
       "right now = %ld\n", jiffies);



 mii_ethtool_gset(&nic->mii, &cmd);
 speed = ethtool_cmd_speed(&cmd);

 if (mii_link_ok(&nic->mii) && !netif_carrier_ok(nic->netdev)) {
  netdev_info(nic->netdev, "NIC Link is Up %u Mbps %s Duplex\n",
       speed == SPEED_100 ? 100 : 10,
       cmd.duplex == DUPLEX_FULL ? "Full" : "Half");
 } else if (!mii_link_ok(&nic->mii) && netif_carrier_ok(nic->netdev)) {
  netdev_info(nic->netdev, "NIC Link is Down\n");
 }

 mii_check_link(&nic->mii);






 spin_lock_irq(&nic->cmd_lock);
 iowrite8(ioread8(&nic->csr->scb.cmd_hi) | irq_sw_gen,&nic->csr->scb.cmd_hi);
 e100_write_flush(nic);
 spin_unlock_irq(&nic->cmd_lock);

 e100_update_stats(nic);
 e100_adjust_adaptive_ifs(nic, speed, cmd.duplex);

 if (nic->mac <= mac_82557_D100_C)

  e100_set_multicast_list(nic->netdev);

 if (nic->flags & ich && speed == SPEED_10 && cmd.duplex == DUPLEX_HALF)

  nic->flags |= ich_10h_workaround;
 else
  nic->flags &= ~ich_10h_workaround;

 mod_timer(&nic->watchdog,
    round_jiffies(jiffies + E100_WATCHDOG_PERIOD));
}
