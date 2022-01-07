
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ethtool_cmd {scalar_t__ speed; scalar_t__ autoneg; scalar_t__ duplex; } ;
struct TYPE_2__ {scalar_t__ full_duplex; scalar_t__ force_media; } ;
struct jme_adapter {struct ethtool_cmd old_ecmd; int flags; int phy_lock; TYPE_1__ mii_if; } ;


 scalar_t__ AUTONEG_ENABLE ;
 int EINVAL ;
 int JME_FLAG_SSET ;
 scalar_t__ SPEED_1000 ;
 int jme_reset_link (struct jme_adapter*) ;
 int mii_ethtool_sset (TYPE_1__*,struct ethtool_cmd*) ;
 struct jme_adapter* netdev_priv (struct net_device*) ;
 int set_bit (int ,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int
jme_set_settings(struct net_device *netdev,
       struct ethtool_cmd *ecmd)
{
 struct jme_adapter *jme = netdev_priv(netdev);
 int rc, fdc = 0;

 if (ecmd->speed == SPEED_1000 && ecmd->autoneg != AUTONEG_ENABLE)
  return -EINVAL;

 if (jme->mii_if.force_media &&
 ecmd->autoneg != AUTONEG_ENABLE &&
 (jme->mii_if.full_duplex != ecmd->duplex))
  fdc = 1;

 spin_lock_bh(&jme->phy_lock);
 rc = mii_ethtool_sset(&(jme->mii_if), ecmd);
 spin_unlock_bh(&jme->phy_lock);

 if (!rc && fdc)
  jme_reset_link(jme);

 if (!rc) {
  set_bit(JME_FLAG_SSET, &jme->flags);
  jme->old_ecmd = *ecmd;
 }

 return rc;
}
