
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_dropped; } ;
struct net_device {TYPE_1__ stats; int trans_start; int name; int base_addr; } ;


 int ACRF ;
 int elp_debug ;
 int inb_status (int ) ;
 int jiffies ;
 int netif_wake_queue (struct net_device*) ;
 int pr_debug (char*,int ,int) ;
 int pr_warning (char*,int ,char*) ;

__attribute__((used)) static void elp_timeout(struct net_device *dev)
{
 int stat;

 stat = inb_status(dev->base_addr);
 pr_warning("%s: transmit timed out, lost %s?\n", dev->name,
     (stat & ACRF) ? "interrupt" : "command");
 if (elp_debug >= 1)
  pr_debug("%s: status %#02x\n", dev->name, stat);
 dev->trans_start = jiffies;
 dev->stats.tx_dropped++;
 netif_wake_queue(dev);
}
