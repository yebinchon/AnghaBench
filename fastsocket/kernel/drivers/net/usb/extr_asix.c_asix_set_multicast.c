
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct usbnet {int data; } ;
struct net_device {int flags; scalar_t__ mc_count; struct dev_mc_list* mc_list; } ;
struct dev_mc_list {struct dev_mc_list* next; int dmi_addr; } ;
struct asix_data {int* multi_filter; } ;


 int AX_CMD_WRITE_MULTI_FILTER ;
 int AX_CMD_WRITE_RX_CTL ;
 int AX_DEFAULT_RX_CTL ;
 scalar_t__ AX_MAX_MCAST ;
 int AX_MCAST_FILTER_SIZE ;
 int AX_RX_CTL_AM ;
 int AX_RX_CTL_AMALL ;
 int AX_RX_CTL_PRO ;
 int ETH_ALEN ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int asix_write_cmd_async (struct usbnet*,int ,int ,int ,int ,int*) ;
 int ether_crc (int ,int ) ;
 int memset (int*,int ,int ) ;
 struct usbnet* netdev_priv (struct net_device*) ;

__attribute__((used)) static void asix_set_multicast(struct net_device *net)
{
 struct usbnet *dev = netdev_priv(net);
 struct asix_data *data = (struct asix_data *)&dev->data;
 u16 rx_ctl = AX_DEFAULT_RX_CTL;

 if (net->flags & IFF_PROMISC) {
  rx_ctl |= AX_RX_CTL_PRO;
 } else if (net->flags & IFF_ALLMULTI
     || net->mc_count > AX_MAX_MCAST) {
  rx_ctl |= AX_RX_CTL_AMALL;
 } else if (net->mc_count == 0) {

 } else {




  struct dev_mc_list *mc_list = net->mc_list;
  u32 crc_bits;
  int i;

  memset(data->multi_filter, 0, AX_MCAST_FILTER_SIZE);


  for (i = 0; i < net->mc_count; i++) {
   crc_bits =
       ether_crc(ETH_ALEN,
          mc_list->dmi_addr) >> 26;
   data->multi_filter[crc_bits >> 3] |=
       1 << (crc_bits & 7);
   mc_list = mc_list->next;
  }

  asix_write_cmd_async(dev, AX_CMD_WRITE_MULTI_FILTER, 0, 0,
       AX_MCAST_FILTER_SIZE, data->multi_filter);

  rx_ctl |= AX_RX_CTL_AM;
 }

 asix_write_cmd_async(dev, AX_CMD_WRITE_RX_CTL, rx_ctl, 0, 0, ((void*)0));
}
