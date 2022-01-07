
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int trans_start; } ;
struct lance_regs {int rdp; int rap; } ;
struct lance_private {struct lance_regs* ll; } ;


 int LE_C0_STOP ;
 int LE_CSR0 ;
 int init_restart_lance (struct lance_private*) ;
 int jiffies ;
 int lance_init_ring (struct net_device*) ;
 int load_csrs (struct lance_private*) ;
 struct lance_private* netdev_priv (struct net_device*) ;
 int writereg (int *,int ) ;

__attribute__((used)) static inline int lance_reset(struct net_device *dev)
{
 struct lance_private *lp = netdev_priv(dev);
 volatile struct lance_regs *ll = lp->ll;
 int status;


 writereg(&ll->rap, LE_CSR0);
 writereg(&ll->rdp, LE_C0_STOP);

 lance_init_ring(dev);
 load_csrs(lp);
 dev->trans_start = jiffies;
 status = init_restart_lance(lp);
 return status;
}
