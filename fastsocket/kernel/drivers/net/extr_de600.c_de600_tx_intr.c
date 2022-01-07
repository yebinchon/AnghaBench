
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_packets; } ;
struct net_device {int trans_start; TYPE_1__ stats; } ;


 int TX_ADDR ;
 int TX_BUSY ;
 int TX_ENABLE ;
 int TX_FAILED16 ;
 int TX_PAGES ;
 int de600_put_command (int ) ;
 int de600_setup_address (int ,int ) ;
 int free_tx_pages ;
 int jiffies ;
 int netif_wake_queue (struct net_device*) ;
 int * tx_fifo ;
 int tx_fifo_out ;

__attribute__((used)) static int de600_tx_intr(struct net_device *dev, int irq_status)
{





 if (irq_status & TX_BUSY)
  return 1;



 if (!(irq_status & TX_FAILED16)) {
  tx_fifo_out = (tx_fifo_out + 1) % TX_PAGES;
  ++free_tx_pages;
  dev->stats.tx_packets++;
  netif_wake_queue(dev);
 }


 if ((free_tx_pages < TX_PAGES) || (irq_status & TX_FAILED16)) {
  dev->trans_start = jiffies;
  de600_setup_address(tx_fifo[tx_fifo_out], TX_ADDR);
  de600_put_command(TX_ENABLE);
  return 1;
 }


 return 0;
}
