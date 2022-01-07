
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int flags; int name; int dev; scalar_t__ mc_count; } ;
struct TYPE_4__ {int rx_creg; } ;
typedef TYPE_1__ rtl8150_t ;


 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int RCR ;
 int async_set_registers (TYPE_1__*,int ,int) ;
 int cpu_to_le16 (int) ;
 int dev_info (int *,char*,int ) ;
 TYPE_1__* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;

__attribute__((used)) static void rtl8150_set_multicast(struct net_device *netdev)
{
 rtl8150_t *dev = netdev_priv(netdev);
 netif_stop_queue(netdev);
 if (netdev->flags & IFF_PROMISC) {
  dev->rx_creg |= cpu_to_le16(0x0001);
  dev_info(&netdev->dev, "%s: promiscuous mode\n", netdev->name);
 } else if (netdev->mc_count ||
     (netdev->flags & IFF_ALLMULTI)) {
  dev->rx_creg &= cpu_to_le16(0xfffe);
  dev->rx_creg |= cpu_to_le16(0x0002);
  dev_info(&netdev->dev, "%s: allmulti set\n", netdev->name);
 } else {

  dev->rx_creg &= cpu_to_le16(0x00fc);
 }
 async_set_registers(dev, RCR, 2);
 netif_wake_queue(netdev);
}
