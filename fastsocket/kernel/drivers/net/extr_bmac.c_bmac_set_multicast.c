
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct net_device {int flags; int mc_count; struct dev_mc_list* mc_list; } ;
struct dev_mc_list {char* dmi_addr; struct dev_mc_list* next; } ;


 int BHASH0 ;
 int BHASH1 ;
 int BHASH2 ;
 int BHASH3 ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int RXCFG ;
 unsigned short RxPromiscEnable ;
 unsigned short bmread (struct net_device*,int ) ;
 int bmwrite (struct net_device*,int ,int) ;
 int ether_crc_le (int,char*) ;

__attribute__((used)) static void bmac_set_multicast(struct net_device *dev)
{
 struct dev_mc_list *dmi = dev->mc_list;
 char *addrs;
 int i;
 unsigned short rx_cfg;
 u32 crc;

 if((dev->flags & IFF_ALLMULTI) || (dev->mc_count > 64)) {
  bmwrite(dev, BHASH0, 0xffff);
  bmwrite(dev, BHASH1, 0xffff);
  bmwrite(dev, BHASH2, 0xffff);
  bmwrite(dev, BHASH3, 0xffff);
 } else if(dev->flags & IFF_PROMISC) {
  rx_cfg = bmread(dev, RXCFG);
  rx_cfg |= RxPromiscEnable;
  bmwrite(dev, RXCFG, rx_cfg);
 } else {
  u16 hash_table[4];

  rx_cfg = bmread(dev, RXCFG);
  rx_cfg &= ~RxPromiscEnable;
  bmwrite(dev, RXCFG, rx_cfg);

  for(i = 0; i < 4; i++) hash_table[i] = 0;

  for(i = 0; i < dev->mc_count; i++) {
   addrs = dmi->dmi_addr;
   dmi = dmi->next;

   if(!(*addrs & 1))
    continue;

   crc = ether_crc_le(6, addrs);
   crc >>= 26;
   hash_table[crc >> 4] |= 1 << (crc & 0xf);
  }
  bmwrite(dev, BHASH0, hash_table[0]);
  bmwrite(dev, BHASH1, hash_table[1]);
  bmwrite(dev, BHASH2, hash_table[2]);
  bmwrite(dev, BHASH3, hash_table[3]);
 }
}
