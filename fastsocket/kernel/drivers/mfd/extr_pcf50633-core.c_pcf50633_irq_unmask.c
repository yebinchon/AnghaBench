
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcf50633 {int dev; } ;


 int __pcf50633_irq_mask_set (struct pcf50633*,int,int ) ;
 int dev_info (int ,char*,int) ;

int pcf50633_irq_unmask(struct pcf50633 *pcf, int irq)
{
 dev_info(pcf->dev, "Unmasking IRQ %d\n", irq);

 return __pcf50633_irq_mask_set(pcf, irq, 0);
}
