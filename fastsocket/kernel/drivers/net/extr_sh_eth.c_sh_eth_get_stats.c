
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct net_device_stats {int tx_carrier_errors; int collisions; int tx_dropped; } ;
struct sh_eth_private {struct net_device_stats stats; } ;
struct net_device {scalar_t__ base_addr; } ;


 scalar_t__ CDCR ;
 scalar_t__ CEECR ;
 scalar_t__ CERCR ;
 scalar_t__ CNDCR ;
 scalar_t__ LCCR ;
 scalar_t__ TROCR ;
 scalar_t__ ctrl_inl (scalar_t__) ;
 int ctrl_outl (int ,scalar_t__) ;
 struct sh_eth_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static struct net_device_stats *sh_eth_get_stats(struct net_device *ndev)
{
 struct sh_eth_private *mdp = netdev_priv(ndev);
 u32 ioaddr = ndev->base_addr;

 mdp->stats.tx_dropped += ctrl_inl(ioaddr + TROCR);
 ctrl_outl(0, ioaddr + TROCR);
 mdp->stats.collisions += ctrl_inl(ioaddr + CDCR);
 ctrl_outl(0, ioaddr + CDCR);
 mdp->stats.tx_carrier_errors += ctrl_inl(ioaddr + LCCR);
 ctrl_outl(0, ioaddr + LCCR);






 mdp->stats.tx_carrier_errors += ctrl_inl(ioaddr + CNDCR);
 ctrl_outl(0, ioaddr + CNDCR);

 return &mdp->stats;
}
