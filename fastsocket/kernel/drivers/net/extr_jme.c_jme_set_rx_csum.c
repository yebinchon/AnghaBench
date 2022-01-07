
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct jme_adapter {int rxmcs_lock; int reg_rxmcs; } ;


 int JME_RXMCS ;
 int RXMCS_CHECKSUM ;
 int jwrite32 (struct jme_adapter*,int ,int ) ;
 struct jme_adapter* netdev_priv (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int
jme_set_rx_csum(struct net_device *netdev, u32 on)
{
 struct jme_adapter *jme = netdev_priv(netdev);

 spin_lock_bh(&jme->rxmcs_lock);
 if (on)
  jme->reg_rxmcs |= RXMCS_CHECKSUM;
 else
  jme->reg_rxmcs &= ~RXMCS_CHECKSUM;
 jwrite32(jme, JME_RXMCS, jme->reg_rxmcs);
 spin_unlock_bh(&jme->rxmcs_lock);

 return 0;
}
