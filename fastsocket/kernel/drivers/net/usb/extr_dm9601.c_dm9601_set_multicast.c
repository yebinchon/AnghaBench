
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct usbnet {int data; } ;
struct net_device {int flags; scalar_t__ mc_count; struct dev_mc_list* mc_list; } ;
struct dev_mc_list {int dmi_addr; struct dev_mc_list* next; } ;


 scalar_t__ DM_MAX_MCAST ;
 int DM_MCAST_ADDR ;
 int DM_MCAST_SIZE ;
 int DM_RX_CTRL ;
 int ETH_ALEN ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int dm_write_async (struct usbnet*,int ,int,int*) ;
 int dm_write_reg_async (struct usbnet*,int ,int) ;
 int ether_crc (int ,int ) ;
 int memset (int*,int,int) ;
 struct usbnet* netdev_priv (struct net_device*) ;

__attribute__((used)) static void dm9601_set_multicast(struct net_device *net)
{
 struct usbnet *dev = netdev_priv(net);


 u8 *hashes = (u8 *) & dev->data;
 u8 rx_ctl = 0x31;

 memset(hashes, 0x00, DM_MCAST_SIZE);
 hashes[DM_MCAST_SIZE - 1] |= 0x80;

 if (net->flags & IFF_PROMISC) {
  rx_ctl |= 0x02;
 } else if (net->flags & IFF_ALLMULTI || net->mc_count > DM_MAX_MCAST) {
  rx_ctl |= 0x04;
 } else if (net->mc_count) {
  struct dev_mc_list *mc_list = net->mc_list;
  int i;

  for (i = 0; i < net->mc_count; i++, mc_list = mc_list->next) {
   u32 crc = ether_crc(ETH_ALEN, mc_list->dmi_addr) >> 26;
   hashes[crc >> 3] |= 1 << (crc & 0x7);
  }
 }

 dm_write_async(dev, DM_MCAST_ADDR, DM_MCAST_SIZE, hashes);
 dm_write_reg_async(dev, DM_RX_CTRL, rx_ctl);
}
