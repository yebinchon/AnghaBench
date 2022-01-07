
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INTC_IPR01 ;
 int INTMSK0 ;
 int INTMSK1 ;



 unsigned short ctrl_inw (int ) ;
 int ctrl_outw (unsigned short,int ) ;

__attribute__((used)) static void enable_se7206_irq(unsigned int irq)
{
 unsigned short val;
 unsigned short value = (0x0001 << 4 * (3 - (130 - irq)));
 unsigned short msk0,msk1;


 val = ctrl_inw(INTC_IPR01);
 val |= value;
 ctrl_outw(val, INTC_IPR01);


 msk0 = ctrl_inw(INTMSK0);
 msk1 = ctrl_inw(INTMSK1);

 switch (irq) {
 case 130:
  msk0 &= ~0x0010;
  break;
 case 129:
  msk0 &= ~0x000f;
  break;
 case 128:
  msk0 &= ~0x0f00;
  msk1 &= ~0x00ff;
  break;
 }
 ctrl_outw(msk0, INTMSK0);
 ctrl_outw(msk1, INTMSK1);
}
