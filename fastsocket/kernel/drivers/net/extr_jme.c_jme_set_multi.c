
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int flags; int mc_count; struct dev_mc_list* mc_list; } ;
struct jme_adapter {int reg_rxmcs; int rxmcs_lock; } ;
struct dev_mc_list {int dmi_addr; struct dev_mc_list* next; } ;


 int ETH_ALEN ;
 int IFF_ALLMULTI ;
 int IFF_MULTICAST ;
 int IFF_PROMISC ;
 int JME_RXMCHT_HI ;
 int JME_RXMCHT_LO ;
 int JME_RXMCS ;
 int RXMCS_ALLFRAME ;
 int RXMCS_ALLMULFRAME ;
 int RXMCS_BRDFRAME ;
 int RXMCS_MULFILTERED ;
 int RXMCS_MULFRAME ;
 int RXMCS_UNIFRAME ;
 int ether_crc (int ,int ) ;
 int jwrite32 (struct jme_adapter*,int ,int) ;
 struct jme_adapter* netdev_priv (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int wmb () ;

__attribute__((used)) static void
jme_set_multi(struct net_device *netdev)
{
 struct jme_adapter *jme = netdev_priv(netdev);
 u32 mc_hash[2] = {};
 int i;

 spin_lock_bh(&jme->rxmcs_lock);

 jme->reg_rxmcs |= RXMCS_BRDFRAME | RXMCS_UNIFRAME;

 if (netdev->flags & IFF_PROMISC) {
  jme->reg_rxmcs |= RXMCS_ALLFRAME;
 } else if (netdev->flags & IFF_ALLMULTI) {
  jme->reg_rxmcs |= RXMCS_ALLMULFRAME;
 } else if (netdev->flags & IFF_MULTICAST) {
  struct dev_mc_list *mclist;
  int bit_nr;

  jme->reg_rxmcs |= RXMCS_MULFRAME | RXMCS_MULFILTERED;
  for (i = 0, mclist = netdev->mc_list;
   mclist && i < netdev->mc_count;
   ++i, mclist = mclist->next) {

   bit_nr = ether_crc(ETH_ALEN, mclist->dmi_addr) & 0x3F;
   mc_hash[bit_nr >> 5] |= 1 << (bit_nr & 0x1F);
  }

  jwrite32(jme, JME_RXMCHT_LO, mc_hash[0]);
  jwrite32(jme, JME_RXMCHT_HI, mc_hash[1]);
 }

 wmb();
 jwrite32(jme, JME_RXMCS, jme->reg_rxmcs);

 spin_unlock_bh(&jme->rxmcs_lock);
}
