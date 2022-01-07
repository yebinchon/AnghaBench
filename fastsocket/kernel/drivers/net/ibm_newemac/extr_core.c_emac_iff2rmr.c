
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int flags; scalar_t__ mc_count; } ;
struct emac_instance {int dummy; } ;


 int EMAC4_RMR_BASE ;
 int EMAC_FTR_EMAC4 ;
 int EMAC_RMR_BAE ;
 int EMAC_RMR_BASE ;
 int EMAC_RMR_IAE ;
 int EMAC_RMR_MAE ;
 int EMAC_RMR_PME ;
 int EMAC_RMR_PMME ;
 int EMAC_RMR_SFCS ;
 int EMAC_RMR_SP ;
 scalar_t__ EMAC_XAHT_SLOTS (struct emac_instance*) ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 scalar_t__ emac_has_feature (struct emac_instance*,int ) ;
 struct emac_instance* netdev_priv (struct net_device*) ;

__attribute__((used)) static inline u32 emac_iff2rmr(struct net_device *ndev)
{
 struct emac_instance *dev = netdev_priv(ndev);
 u32 r;

 r = EMAC_RMR_SP | EMAC_RMR_SFCS | EMAC_RMR_IAE | EMAC_RMR_BAE;

 if (emac_has_feature(dev, EMAC_FTR_EMAC4))
     r |= EMAC4_RMR_BASE;
 else
     r |= EMAC_RMR_BASE;

 if (ndev->flags & IFF_PROMISC)
  r |= EMAC_RMR_PME;
 else if (ndev->flags & IFF_ALLMULTI ||
    (ndev->mc_count > EMAC_XAHT_SLOTS(dev)))
  r |= EMAC_RMR_PMME;
 else if (ndev->mc_count > 0)
  r |= EMAC_RMR_MAE;

 return r;
}
