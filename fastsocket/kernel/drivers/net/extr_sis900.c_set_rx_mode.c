
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct sis900_private {scalar_t__ chipset_rev; } ;
struct net_device {long base_addr; int flags; scalar_t__ mc_count; struct dev_mc_list* mc_list; } ;
struct dev_mc_list {int dmi_addr; struct dev_mc_list* next; } ;


 int IFF_ALLMULTI ;
 int IFF_LOOPBACK ;
 int IFF_PROMISC ;
 int RFAAB ;
 int RFAAM ;
 int RFADDR_shift ;
 int RFEN ;
 int RFPromiscuous ;
 int RxATX ;
 int RxDIS ;
 scalar_t__ SIS635A_900_REV ;
 scalar_t__ SIS900B_900_REV ;
 int TxDIS ;
 int TxMLB ;
 scalar_t__ cr ;
 int inl (scalar_t__) ;
 scalar_t__ multicast_filter_limit ;
 struct sis900_private* netdev_priv (struct net_device*) ;
 int outl (int,scalar_t__) ;
 scalar_t__ rfcr ;
 scalar_t__ rfdr ;
 scalar_t__ rxcfg ;
 unsigned int sis900_mcast_bitnr (int ,scalar_t__) ;
 scalar_t__ txcfg ;

__attribute__((used)) static void set_rx_mode(struct net_device *net_dev)
{
 long ioaddr = net_dev->base_addr;
 struct sis900_private *sis_priv = netdev_priv(net_dev);
 u16 mc_filter[16] = {0};
 int i, table_entries;
 u32 rx_mode;


 if((sis_priv->chipset_rev >= SIS635A_900_REV) ||
   (sis_priv->chipset_rev == SIS900B_900_REV))
  table_entries = 16;
 else
  table_entries = 8;

 if (net_dev->flags & IFF_PROMISC) {

  rx_mode = RFPromiscuous;
  for (i = 0; i < table_entries; i++)
   mc_filter[i] = 0xffff;
 } else if ((net_dev->mc_count > multicast_filter_limit) ||
     (net_dev->flags & IFF_ALLMULTI)) {

  rx_mode = RFAAB | RFAAM;
  for (i = 0; i < table_entries; i++)
   mc_filter[i] = 0xffff;
 } else {



  struct dev_mc_list *mclist;
  rx_mode = RFAAB;
  for (i = 0, mclist = net_dev->mc_list;
   mclist && i < net_dev->mc_count;
   i++, mclist = mclist->next) {
   unsigned int bit_nr =
    sis900_mcast_bitnr(mclist->dmi_addr, sis_priv->chipset_rev);
   mc_filter[bit_nr >> 4] |= (1 << (bit_nr & 0xf));
  }
 }


 for (i = 0; i < table_entries; i++) {

  outl((u32)(0x00000004+i) << RFADDR_shift, ioaddr + rfcr);
  outl(mc_filter[i], ioaddr + rfdr);
 }

 outl(RFEN | rx_mode, ioaddr + rfcr);



 if (net_dev->flags & IFF_LOOPBACK) {
  u32 cr_saved;

  cr_saved = inl(ioaddr + cr);
  outl(cr_saved | TxDIS | RxDIS, ioaddr + cr);

  outl(inl(ioaddr + txcfg) | TxMLB, ioaddr + txcfg);
  outl(inl(ioaddr + rxcfg) | RxATX, ioaddr + rxcfg);

  outl(cr_saved, ioaddr + cr);
 }

 return;
}
