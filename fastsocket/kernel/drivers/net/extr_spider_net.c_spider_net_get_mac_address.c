
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spider_net_card {int dummy; } ;
struct net_device {int* dev_addr; } ;


 int EINVAL ;
 int SPIDER_NET_GMACUNIMACL ;
 int SPIDER_NET_GMACUNIMACU ;
 int is_valid_ether_addr (int*) ;
 struct spider_net_card* netdev_priv (struct net_device*) ;
 int spider_net_read_reg (struct spider_net_card*,int ) ;

__attribute__((used)) static int
spider_net_get_mac_address(struct net_device *netdev)
{
 struct spider_net_card *card = netdev_priv(netdev);
 u32 macl, macu;

 macl = spider_net_read_reg(card, SPIDER_NET_GMACUNIMACL);
 macu = spider_net_read_reg(card, SPIDER_NET_GMACUNIMACU);

 netdev->dev_addr[0] = (macu >> 24) & 0xff;
 netdev->dev_addr[1] = (macu >> 16) & 0xff;
 netdev->dev_addr[2] = (macu >> 8) & 0xff;
 netdev->dev_addr[3] = macu & 0xff;
 netdev->dev_addr[4] = (macl >> 8) & 0xff;
 netdev->dev_addr[5] = macl & 0xff;

 if (!is_valid_ether_addr(&netdev->dev_addr[0]))
  return -EINVAL;

 return 0;
}
