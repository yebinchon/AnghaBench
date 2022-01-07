
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spider_net_card {int dummy; } ;
struct sockaddr {int* sa_data; } ;
struct net_device {int addr_len; int dev_addr; } ;


 int EADDRNOTAVAIL ;
 int SPIDER_NET_GMACOPEMD ;
 int SPIDER_NET_GMACUNIMACL ;
 int SPIDER_NET_GMACUNIMACU ;
 int is_valid_ether_addr (int*) ;
 scalar_t__ memcmp (int ,int*,int ) ;
 struct spider_net_card* netdev_priv (struct net_device*) ;
 scalar_t__ spider_net_get_mac_address (struct net_device*) ;
 int spider_net_read_reg (struct spider_net_card*,int ) ;
 int spider_net_set_promisc (struct spider_net_card*) ;
 int spider_net_write_reg (struct spider_net_card*,int ,int) ;

__attribute__((used)) static int
spider_net_set_mac(struct net_device *netdev, void *p)
{
 struct spider_net_card *card = netdev_priv(netdev);
 u32 macl, macu, regvalue;
 struct sockaddr *addr = p;

 if (!is_valid_ether_addr(addr->sa_data))
  return -EADDRNOTAVAIL;


 regvalue = spider_net_read_reg(card, SPIDER_NET_GMACOPEMD);
 regvalue &= ~((1 << 5) | (1 << 6));
 spider_net_write_reg(card, SPIDER_NET_GMACOPEMD, regvalue);


 macu = (addr->sa_data[0]<<24) + (addr->sa_data[1]<<16) +
  (addr->sa_data[2]<<8) + (addr->sa_data[3]);
 macl = (addr->sa_data[4]<<8) + (addr->sa_data[5]);
 spider_net_write_reg(card, SPIDER_NET_GMACUNIMACU, macu);
 spider_net_write_reg(card, SPIDER_NET_GMACUNIMACL, macl);


 regvalue = spider_net_read_reg(card, SPIDER_NET_GMACOPEMD);
 regvalue |= ((1 << 5) | (1 << 6));
 spider_net_write_reg(card, SPIDER_NET_GMACOPEMD, regvalue);

 spider_net_set_promisc(card);


 if (spider_net_get_mac_address(netdev))
  return -EADDRNOTAVAIL;
 if (memcmp(netdev->dev_addr,addr->sa_data,netdev->addr_len))
  return -EADDRNOTAVAIL;

 return 0;
}
