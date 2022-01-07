
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group_irq {int dummy; } ;
 int REG_AIC_MECR ;
 int __raw_writel (int,int ) ;
 struct group_irq group_gdma ;
 struct group_irq group_i2c ;
 int group_irq_enable (struct group_irq*) ;
 struct group_irq group_nirq0 ;
 struct group_irq group_nirq1 ;
 struct group_irq group_ottimer ;
 struct group_irq group_ps2 ;
 struct group_irq group_sc ;
 struct group_irq group_usbh ;

__attribute__((used)) static void nuc900_irq_unmask(unsigned int irq)
{
 struct group_irq *group_irq;

 group_irq = ((void*)0);

 __raw_writel(1 << irq, REG_AIC_MECR);

 switch (irq) {
 case 134:
  group_irq = &group_nirq0;
  break;

 case 133:
  group_irq = &group_nirq1;
  break;

 case 128:
  group_irq = &group_usbh;
  break;

 case 129:
  group_irq = &group_ottimer;
  break;

 case 135:
  group_irq = &group_gdma;
  break;

 case 130:
  group_irq = &group_sc;
  break;

 case 132:
  group_irq = &group_i2c;
  break;

 case 131:
  group_irq = &group_ps2;
  break;
 }

 if (group_irq)
  group_irq_enable(group_irq);
}
