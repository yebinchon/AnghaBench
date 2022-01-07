
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct cp_private {int lock; int cpcmd; } ;


 int CpCmd ;
 int RxChkSum ;
 int cpw16_f (int ,int ) ;
 struct cp_private* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int cp_set_rx_csum(struct net_device *dev, u32 data)
{
 struct cp_private *cp = netdev_priv(dev);
 u16 cmd = cp->cpcmd, newcmd;

 newcmd = cmd;

 if (data)
  newcmd |= RxChkSum;
 else
  newcmd &= ~RxChkSum;

 if (newcmd != cmd) {
  unsigned long flags;

  spin_lock_irqsave(&cp->lock, flags);
  cp->cpcmd = newcmd;
  cpw16_f(CpCmd, newcmd);
  spin_unlock_irqrestore(&cp->lock, flags);
 }

 return 0;
}
