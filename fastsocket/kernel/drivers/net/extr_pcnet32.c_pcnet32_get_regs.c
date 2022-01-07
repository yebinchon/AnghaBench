
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ulong ;
typedef int u16 ;
struct pcnet32_access {int (* read_csr ) (scalar_t__,int) ;int (* write_csr ) (scalar_t__,int,int) ;scalar_t__ (* read_bcr ) (scalar_t__,int) ;int (* write_bcr ) (scalar_t__,int,int) ;} ;
struct pcnet32_private {int phymask; int lock; struct pcnet32_access a; scalar_t__ mii; } ;
struct net_device {scalar_t__ base_addr; } ;
struct ethtool_regs {int dummy; } ;


 int CSR0 ;
 int CSR0_STOP ;
 int CSR5 ;
 int CSR5_SUSPEND ;
 int PCNET32_MAX_PHYS ;
 int PCNET32_REGS_PER_PHY ;
 int inw (scalar_t__) ;
 struct pcnet32_private* netdev_priv (struct net_device*) ;
 int pcnet32_suspend (struct net_device*,unsigned long*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (scalar_t__,int) ;
 int stub10 (scalar_t__,int,int) ;
 int stub2 (scalar_t__,int) ;
 int stub3 (scalar_t__,int) ;
 int stub4 (scalar_t__,int) ;
 scalar_t__ stub5 (scalar_t__,int) ;
 scalar_t__ stub6 (scalar_t__,int) ;
 int stub7 (scalar_t__,int,int) ;
 scalar_t__ stub8 (scalar_t__,int) ;
 int stub9 (scalar_t__,int) ;

__attribute__((used)) static void pcnet32_get_regs(struct net_device *dev, struct ethtool_regs *regs,
        void *ptr)
{
 int i, csr0;
 u16 *buff = ptr;
 struct pcnet32_private *lp = netdev_priv(dev);
 struct pcnet32_access *a = &lp->a;
 ulong ioaddr = dev->base_addr;
 unsigned long flags;

 spin_lock_irqsave(&lp->lock, flags);

 csr0 = a->read_csr(ioaddr, CSR0);
 if (!(csr0 & CSR0_STOP))
  pcnet32_suspend(dev, &flags, 1);


 for (i = 0; i < 16; i += 2)
  *buff++ = inw(ioaddr + i);


 for (i = 0; i < 90; i++) {
  *buff++ = a->read_csr(ioaddr, i);
 }

 *buff++ = a->read_csr(ioaddr, 112);
 *buff++ = a->read_csr(ioaddr, 114);


 for (i = 0; i < 30; i++) {
  *buff++ = a->read_bcr(ioaddr, i);
 }
 *buff++ = 0;
 for (i = 31; i < 36; i++) {
  *buff++ = a->read_bcr(ioaddr, i);
 }


 if (lp->mii) {
  int j;
  for (j = 0; j < PCNET32_MAX_PHYS; j++) {
   if (lp->phymask & (1 << j)) {
    for (i = 0; i < PCNET32_REGS_PER_PHY; i++) {
     lp->a.write_bcr(ioaddr, 33,
       (j << 5) | i);
     *buff++ = lp->a.read_bcr(ioaddr, 34);
    }
   }
  }
 }

 if (!(csr0 & CSR0_STOP)) {
  int csr5;


  csr5 = a->read_csr(ioaddr, CSR5);
  a->write_csr(ioaddr, CSR5, csr5 & (~CSR5_SUSPEND));
 }

 spin_unlock_irqrestore(&lp->lock, flags);
}
