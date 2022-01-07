
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; } ;


 int INTSTS0 ;
 int INTSTS1 ;



 int IRQ_DISABLED ;
 int IRQ_INPROGRESS ;
 unsigned short ctrl_inw (int ) ;
 int ctrl_outw (unsigned short,int ) ;
 int enable_se7206_irq (unsigned int) ;
 TYPE_1__* irq_desc ;

__attribute__((used)) static void eoi_se7206_irq(unsigned int irq)
{
 unsigned short sts0,sts1;

 if (!(irq_desc[irq].status & (IRQ_DISABLED|IRQ_INPROGRESS)))
  enable_se7206_irq(irq);

 sts0 = ctrl_inw(INTSTS0);
 sts1 = ctrl_inw(INTSTS1);

 switch (irq) {
 case 130:
  sts0 &= ~0x0010;
  break;
 case 129:
  sts0 &= ~0x000f;
  break;
 case 128:
  sts0 &= ~0x0f00;
  sts1 &= ~0x00ff;
  break;
 }
 ctrl_outw(sts0, INTSTS0);
 ctrl_outw(sts1, INTSTS1);
}
