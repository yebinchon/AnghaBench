
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; } ;
struct cp_private {int lock; } ;


 int Cmd ;
 int CpCmd ;
 int IntrMask ;
 int IntrStatus ;
 int cp_clean_rings (struct cp_private*) ;
 int cp_init_rings (struct cp_private*) ;
 int cp_start_hw (struct cp_private*) ;
 int cp_stop_hw (struct cp_private*) ;
 int cpr16 (int ) ;
 int cpr8 (int ) ;
 struct cp_private* netdev_priv (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int pr_warning (char*,int ,int ,int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void cp_tx_timeout(struct net_device *dev)
{
 struct cp_private *cp = netdev_priv(dev);
 unsigned long flags;
 int rc;

 pr_warning("%s: Transmit timeout, status %2x %4x %4x %4x\n",
        dev->name, cpr8(Cmd), cpr16(CpCmd),
        cpr16(IntrStatus), cpr16(IntrMask));

 spin_lock_irqsave(&cp->lock, flags);

 cp_stop_hw(cp);
 cp_clean_rings(cp);
 rc = cp_init_rings(cp);
 cp_start_hw(cp);

 netif_wake_queue(dev);

 spin_unlock_irqrestore(&cp->lock, flags);

 return;
}
