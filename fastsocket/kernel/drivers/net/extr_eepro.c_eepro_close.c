
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int base_addr; int irq; } ;
struct eepro_local {scalar_t__ tx_last; int xmt_lower_limit; int tx_end; int tx_start; } ;


 int REG1 ;
 short STOP_RCV_CMD ;
 int eepro_clear_int (int) ;
 int eepro_dis_int (int) ;
 int eepro_reset (int) ;
 int eepro_sw2bank0 (int) ;
 int eepro_sw2bank1 (int) ;
 int free_irq (int ,struct net_device*) ;
 short inb (int) ;
 struct eepro_local* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int outb (short,int) ;

__attribute__((used)) static int eepro_close(struct net_device *dev)
{
 struct eepro_local *lp = netdev_priv(dev);
 int ioaddr = dev->base_addr;
 short temp_reg;

 netif_stop_queue(dev);

 eepro_sw2bank1(ioaddr);


 temp_reg = inb(ioaddr + REG1);
 outb(temp_reg & 0x7f, ioaddr + REG1);

 eepro_sw2bank0(ioaddr);


 outb(STOP_RCV_CMD, ioaddr);
 lp->tx_start = lp->tx_end = lp->xmt_lower_limit;
 lp->tx_last = 0;


 eepro_dis_int(ioaddr);


 eepro_clear_int(ioaddr);


 eepro_reset(ioaddr);


 free_irq(dev->irq, dev);



 return 0;
}
