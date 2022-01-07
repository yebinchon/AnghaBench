
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usbnet {int data; } ;
struct net_device {int flags; scalar_t__ mc_count; struct dev_mc_list* mc_list; } ;
struct mcs7830_data {int config; int* multi_filter; } ;
struct dev_mc_list {struct dev_mc_list* next; int dmi_addr; } ;


 int ETH_ALEN ;
 int HIF_REG_CONFIG ;
 int HIF_REG_CONFIG_ALLMULTICAST ;
 int HIF_REG_CONFIG_PROMISCIOUS ;
 int HIF_REG_CONFIG_TXENABLE ;
 int HIF_REG_MULTICAST_HASH ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 scalar_t__ MCS7830_MAX_MCAST ;
 int ether_crc (int ,int ) ;
 int mcs7830_set_reg_async (struct usbnet*,int ,int,int*) ;
 int memset (int*,int ,int) ;
 struct usbnet* netdev_priv (struct net_device*) ;

__attribute__((used)) static void mcs7830_set_multicast(struct net_device *net)
{
 struct usbnet *dev = netdev_priv(net);
 struct mcs7830_data *data = (struct mcs7830_data *)&dev->data;

 data->config = HIF_REG_CONFIG_TXENABLE;


 data->config |= HIF_REG_CONFIG_ALLMULTICAST;

 if (net->flags & IFF_PROMISC) {
  data->config |= HIF_REG_CONFIG_PROMISCIOUS;
 } else if (net->flags & IFF_ALLMULTI
     || net->mc_count > MCS7830_MAX_MCAST) {
  data->config |= HIF_REG_CONFIG_ALLMULTICAST;
 } else if (net->mc_count == 0) {

 } else {




  struct dev_mc_list *mc_list = net->mc_list;
  u32 crc_bits;
  int i;

  memset(data->multi_filter, 0, sizeof data->multi_filter);


  for (i = 0; i < net->mc_count; i++) {
   crc_bits = ether_crc(ETH_ALEN, mc_list->dmi_addr) >> 26;
   data->multi_filter[crc_bits >> 3] |= 1 << (crc_bits & 7);
   mc_list = mc_list->next;
  }

  mcs7830_set_reg_async(dev, HIF_REG_MULTICAST_HASH,
    sizeof data->multi_filter,
    data->multi_filter);
 }

 mcs7830_set_reg_async(dev, HIF_REG_CONFIG, 1, &data->config);
}
