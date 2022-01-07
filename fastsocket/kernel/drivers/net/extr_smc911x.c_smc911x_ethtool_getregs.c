
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int phy_id; } ;
struct smc911x_local {int lock; TYPE_1__ mii; int version; } ;
struct net_device {int dummy; } ;
struct ethtool_regs {int version; } ;


 int E2P_CMD ;
 int ID_REV ;
 int MAC_CR ;
 int SMC_GET_MAC_CSR (struct smc911x_local*,int,int) ;
 int SMC_GET_MII (struct smc911x_local*,int,int ,int) ;
 int SMC_inl (struct smc911x_local*,int) ;
 int WUCSR ;
 struct smc911x_local* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void smc911x_ethtool_getregs(struct net_device *dev,
           struct ethtool_regs* regs, void *buf)
{
 struct smc911x_local *lp = netdev_priv(dev);
 unsigned long flags;
 u32 reg,i,j=0;
 u32 *data = (u32*)buf;

 regs->version = lp->version;
 for(i=ID_REV;i<=E2P_CMD;i+=4) {
  data[j++] = SMC_inl(lp, i);
 }
 for(i=MAC_CR;i<=WUCSR;i++) {
  spin_lock_irqsave(&lp->lock, flags);
  SMC_GET_MAC_CSR(lp, i, reg);
  spin_unlock_irqrestore(&lp->lock, flags);
  data[j++] = reg;
 }
 for(i=0;i<=31;i++) {
  spin_lock_irqsave(&lp->lock, flags);
  SMC_GET_MII(lp, i, lp->mii.phy_id, reg);
  spin_unlock_irqrestore(&lp->lock, flags);
  data[j++] = reg & 0xFFFF;
 }
}
