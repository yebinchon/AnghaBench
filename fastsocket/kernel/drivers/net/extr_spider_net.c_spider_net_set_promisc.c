
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spider_net_card {struct net_device* netdev; } ;
struct net_device {int flags; int* dev_addr; } ;
typedef int macl ;


 int IFF_PROMISC ;
 scalar_t__ SPIDER_NET_GMRUA0FIL15R ;
 scalar_t__ SPIDER_NET_GMRUAFILnR ;
 int SPIDER_NET_NONPROMISC_VALUE ;
 int SPIDER_NET_PROMISC_VALUE ;
 int SPIDER_NET_UA_DESCR_VALUE ;
 int memcpy (int*,int*,int) ;
 int spider_net_write_reg (struct spider_net_card*,scalar_t__,int) ;

__attribute__((used)) static void
spider_net_set_promisc(struct spider_net_card *card)
{
 u32 macu, macl;
 struct net_device *netdev = card->netdev;

 if (netdev->flags & IFF_PROMISC) {

  spider_net_write_reg(card, SPIDER_NET_GMRUAFILnR, 0);
  spider_net_write_reg(card, SPIDER_NET_GMRUAFILnR + 0x04, 0);
  spider_net_write_reg(card, SPIDER_NET_GMRUA0FIL15R,
         SPIDER_NET_PROMISC_VALUE);
 } else {
  macu = netdev->dev_addr[0];
  macu <<= 8;
  macu |= netdev->dev_addr[1];
  memcpy(&macl, &netdev->dev_addr[2], sizeof(macl));

  macu |= SPIDER_NET_UA_DESCR_VALUE;
  spider_net_write_reg(card, SPIDER_NET_GMRUAFILnR, macu);
  spider_net_write_reg(card, SPIDER_NET_GMRUAFILnR + 0x04, macl);
  spider_net_write_reg(card, SPIDER_NET_GMRUA0FIL15R,
         SPIDER_NET_NONPROMISC_VALUE);
 }
}
