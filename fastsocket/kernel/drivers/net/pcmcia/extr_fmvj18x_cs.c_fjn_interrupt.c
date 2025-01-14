
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned short tx_packets; } ;
struct net_device {unsigned int base_addr; unsigned short name; int trans_start; TYPE_1__ stats; } ;
struct TYPE_5__ {unsigned short sent; int tx_queue; int * base; scalar_t__ tx_started; scalar_t__ tx_queue_len; } ;
typedef TYPE_2__ local_info_t ;
typedef int irqreturn_t ;


 int DEBUG (int,char*,unsigned short,...) ;
 unsigned short DO_TX ;
 unsigned short D_RX_INTR ;
 unsigned short D_TX_INTR ;
 unsigned short F_BUF_EMP ;
 unsigned short F_TMT_RDY ;
 int IRQ_HANDLED ;
 scalar_t__ RX_INTR ;
 scalar_t__ RX_MODE ;
 scalar_t__ RX_STATUS ;
 scalar_t__ TX_INTR ;
 scalar_t__ TX_START ;
 scalar_t__ TX_STATUS ;
 int fjn_rx (struct net_device*) ;
 unsigned short inb (scalar_t__) ;
 int jiffies ;
 TYPE_2__* netdev_priv (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int outb (unsigned short,scalar_t__) ;
 int outw (int,scalar_t__) ;
 int udelay (int) ;
 int writeb (int,int *) ;

__attribute__((used)) static irqreturn_t fjn_interrupt(int dummy, void *dev_id)
{
    struct net_device *dev = dev_id;
    local_info_t *lp = netdev_priv(dev);
    unsigned int ioaddr;
    unsigned short tx_stat, rx_stat;

    ioaddr = dev->base_addr;


    outw(0x0000, ioaddr + TX_INTR);


    udelay(1);


    tx_stat = inb(ioaddr + TX_STATUS);
    rx_stat = inb(ioaddr + RX_STATUS);


    outb(tx_stat, ioaddr + TX_STATUS);
    outb(rx_stat, ioaddr + RX_STATUS);

    DEBUG(4, "%s: interrupt, rx_status %02x.\n", dev->name, rx_stat);
    DEBUG(4, "               tx_status %02x.\n", tx_stat);

    if (rx_stat || (inb(ioaddr + RX_MODE) & F_BUF_EMP) == 0) {

 fjn_rx(dev);
    }
    if (tx_stat & F_TMT_RDY) {
 dev->stats.tx_packets += lp->sent ;
        lp->sent = 0 ;
 if (lp->tx_queue) {
     outb(DO_TX | lp->tx_queue, ioaddr + TX_START);
     lp->sent = lp->tx_queue ;
     lp->tx_queue = 0;
     lp->tx_queue_len = 0;
     dev->trans_start = jiffies;
 } else {
     lp->tx_started = 0;
 }
 netif_wake_queue(dev);
    }
    DEBUG(4, "%s: exiting interrupt,\n", dev->name);
    DEBUG(4, "    tx_status %02x, rx_status %02x.\n", tx_stat, rx_stat);

    outb(D_TX_INTR, ioaddr + TX_INTR);
    outb(D_RX_INTR, ioaddr + RX_INTR);

    if (lp->base != ((void*)0)) {

 writeb(0x01, lp->base+0x802);
 writeb(0x09, lp->base+0x822);
    }

    return IRQ_HANDLED;

}
