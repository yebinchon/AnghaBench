
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct jme_adapter {int phy_lock; int mii_if; } ;
struct ethtool_cmd {int dummy; } ;


 int mii_ethtool_gset (int *,struct ethtool_cmd*) ;
 struct jme_adapter* netdev_priv (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int
jme_get_settings(struct net_device *netdev,
       struct ethtool_cmd *ecmd)
{
 struct jme_adapter *jme = netdev_priv(netdev);
 int rc;

 spin_lock_bh(&jme->phy_lock);
 rc = mii_ethtool_gset(&(jme->mii_if), ecmd);
 spin_unlock_bh(&jme->phy_lock);
 return rc;
}
