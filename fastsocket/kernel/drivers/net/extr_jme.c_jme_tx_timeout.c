
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct jme_adapter {int old_ecmd; int flags; scalar_t__ phylink; } ;


 int JME_FLAG_SSET ;
 int jme_reset_link (struct jme_adapter*) ;
 int jme_reset_phy_processor (struct jme_adapter*) ;
 int jme_set_settings (struct net_device*,int *) ;
 struct jme_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void
jme_tx_timeout(struct net_device *netdev)
{
 struct jme_adapter *jme = netdev_priv(netdev);

 jme->phylink = 0;
 jme_reset_phy_processor(jme);
 if (test_bit(JME_FLAG_SSET, &jme->flags))
  jme_set_settings(netdev, &jme->old_ecmd);




 jme_reset_link(jme);
}
