
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rx_errors; int tx_errors; } ;
struct net_device {int name; TYPE_1__ stats; } ;
struct lance_regs {int rap; int rdp; } ;
struct lance_private {struct lance_regs* ll; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int LE_C0_BABL ;
 int LE_C0_CERR ;
 int LE_C0_ERR ;
 int LE_C0_INEA ;
 int LE_C0_INTR ;
 int LE_C0_MERR ;
 int LE_C0_MISS ;
 int LE_C0_RINT ;
 int LE_C0_STOP ;
 int LE_C0_TINT ;
 int LE_CSR0 ;
 int init_restart_lance (struct lance_private*) ;
 int lance_init_ring (struct net_device*) ;
 int lance_rx (struct net_device*) ;
 int lance_tx (struct net_device*) ;
 int load_csrs (struct lance_private*) ;
 struct lance_private* netdev_priv (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int printk (char*,int ,int) ;
 int writereg (int*,int) ;

__attribute__((used)) static irqreturn_t lance_interrupt(int irq, void *dev_id)
{
 struct net_device *dev = dev_id;
 struct lance_private *lp = netdev_priv(dev);
 volatile struct lance_regs *ll = lp->ll;
 int csr0;

 writereg(&ll->rap, LE_CSR0);
 csr0 = ll->rdp;


 writereg(&ll->rdp, csr0 & (LE_C0_INTR | LE_C0_TINT | LE_C0_RINT));

 if ((csr0 & LE_C0_ERR)) {

  writereg(&ll->rdp, LE_C0_BABL | LE_C0_ERR | LE_C0_MISS |
    LE_C0_CERR | LE_C0_MERR);
 }
 if (csr0 & LE_C0_RINT)
  lance_rx(dev);

 if (csr0 & LE_C0_TINT)
  lance_tx(dev);

 if (csr0 & LE_C0_BABL)
  dev->stats.tx_errors++;

 if (csr0 & LE_C0_MISS)
  dev->stats.rx_errors++;

 if (csr0 & LE_C0_MERR) {
  printk("%s: Memory error, status %04x\n", dev->name, csr0);

  writereg(&ll->rdp, LE_C0_STOP);

  lance_init_ring(dev);
  load_csrs(lp);
  init_restart_lance(lp);
  netif_wake_queue(dev);
 }

 writereg(&ll->rdp, LE_C0_INEA);
 writereg(&ll->rdp, LE_C0_INEA);
 return IRQ_HANDLED;
}
