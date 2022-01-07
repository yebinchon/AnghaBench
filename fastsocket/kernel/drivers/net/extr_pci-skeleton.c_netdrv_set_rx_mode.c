
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct netdrv_private {size_t chipset; int lock; void* mmio_addr; } ;
struct net_device {int flags; scalar_t__ mc_count; struct dev_mc_list* mc_list; int name; } ;
struct dev_mc_list {int dmi_addr; struct dev_mc_list* next; } ;
struct TYPE_2__ {int RxConfigMask; } ;


 int AcceptAllPhys ;
 int AcceptBroadcast ;
 int AcceptMulticast ;
 int AcceptMyPhys ;
 int DPRINTK (char*,...) ;
 int ETH_ALEN ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 scalar_t__ MAR0 ;
 int NETDRV_R32 (scalar_t__) ;
 int NETDRV_W32_F (scalar_t__,int) ;
 scalar_t__ RxConfig ;
 int ether_crc (int ,int ) ;
 int in_irq () ;
 scalar_t__ multicast_filter_limit ;
 struct netdrv_private* netdev_priv (struct net_device*) ;
 int netdrv_rx_config ;
 TYPE_1__* rtl_chip_info ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void netdrv_set_rx_mode (struct net_device *dev)
{
 struct netdrv_private *tp = netdev_priv(dev);
 void *ioaddr = tp->mmio_addr;
 u32 mc_filter[2];
 int i, rx_mode;
 u32 tmp;

 DPRINTK ("ENTER\n");

 DPRINTK ("%s:   netdrv_set_rx_mode(%4.4x) done -- Rx config %8.8x.\n",
   dev->name, dev->flags, NETDRV_R32 (RxConfig));


 if (dev->flags & IFF_PROMISC) {
  rx_mode =
      AcceptBroadcast | AcceptMulticast | AcceptMyPhys |
      AcceptAllPhys;
  mc_filter[1] = mc_filter[0] = 0xffffffff;
 } else if ((dev->mc_count > multicast_filter_limit)
     || (dev->flags & IFF_ALLMULTI)) {

  rx_mode = AcceptBroadcast | AcceptMulticast | AcceptMyPhys;
  mc_filter[1] = mc_filter[0] = 0xffffffff;
 } else {
  struct dev_mc_list *mclist;
  rx_mode = AcceptBroadcast | AcceptMulticast | AcceptMyPhys;
  mc_filter[1] = mc_filter[0] = 0;
  for (i = 0, mclist = dev->mc_list; mclist && i < dev->mc_count;
       i++, mclist = mclist->next) {
   int bit_nr = ether_crc(ETH_ALEN, mclist->dmi_addr) >> 26;

   mc_filter[bit_nr >> 5] |= 1 << (bit_nr & 31);
  }
 }


 if (!in_irq ())
  spin_lock_irq (&tp->lock);


 tmp = netdrv_rx_config | rx_mode |
  (NETDRV_R32 (RxConfig) & rtl_chip_info[tp->chipset].RxConfigMask);
 NETDRV_W32_F (RxConfig, tmp);
 NETDRV_W32_F (MAR0 + 0, mc_filter[0]);
 NETDRV_W32_F (MAR0 + 4, mc_filter[1]);

 if (!in_irq ())
  spin_unlock_irq (&tp->lock);

 DPRINTK ("EXIT\n");
}
