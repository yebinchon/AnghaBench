
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct net_device {int flags; int mc_count; struct dev_mc_list* mc_list; } ;
struct korina_private {int lock; TYPE_1__* eth_regs; } ;
struct dev_mc_list {char* dmi_addr; struct dev_mc_list* next; } ;
struct TYPE_2__ {int etharc; int ethhash1; int ethhash0; } ;


 int ETH_ARC_AB ;
 int ETH_ARC_AFM ;
 int ETH_ARC_AM ;
 int ETH_ARC_PRO ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int ether_crc_le (int,char*) ;
 struct korina_private* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,int *) ;

__attribute__((used)) static void korina_multicast_list(struct net_device *dev)
{
 struct korina_private *lp = netdev_priv(dev);
 unsigned long flags;
 struct dev_mc_list *dmi = dev->mc_list;
 u32 recognise = ETH_ARC_AB;
 int i;


 if (dev->flags & IFF_PROMISC)
  recognise |= ETH_ARC_PRO;

 else if ((dev->flags & IFF_ALLMULTI) || (dev->mc_count > 4))

  recognise |= ETH_ARC_AM;


 if (dev->mc_count > 4) {
  u16 hash_table[4];
  u32 crc;

  for (i = 0; i < 4; i++)
   hash_table[i] = 0;

  for (i = 0; i < dev->mc_count; i++) {
   char *addrs = dmi->dmi_addr;

   dmi = dmi->next;

   if (!(*addrs & 1))
    continue;

   crc = ether_crc_le(6, addrs);
   crc >>= 26;
   hash_table[crc >> 4] |= 1 << (15 - (crc & 0xf));
  }

  recognise |= ETH_ARC_AFM;


  writel((u32)(hash_table[1] << 16 | hash_table[0]),
     &lp->eth_regs->ethhash0);
  writel((u32)(hash_table[3] << 16 | hash_table[2]),
     &lp->eth_regs->ethhash1);
 }

 spin_lock_irqsave(&lp->lock, flags);
 writel(recognise, &lp->eth_regs->etharc);
 spin_unlock_irqrestore(&lp->lock, flags);
}
