
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct egpio_info {int irq_start; int irqs_enabled; int ack_register; } ;
struct device {int dummy; } ;


 int ack_irqs (struct egpio_info*) ;
 struct egpio_info* dev_get_drvdata (struct device*) ;
 int egpio_readw (struct egpio_info*,int ) ;
 int ffs (int ) ;

int htc_egpio_get_wakeup_irq(struct device *dev)
{
 struct egpio_info *ei = dev_get_drvdata(dev);


 u16 readval = egpio_readw(ei, ei->ack_register);

 ack_irqs(ei);

 readval &= ei->irqs_enabled;
 return ei->irq_start + ffs(readval) - 1;
}
