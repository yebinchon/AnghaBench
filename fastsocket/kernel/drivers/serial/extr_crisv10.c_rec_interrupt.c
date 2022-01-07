
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e100_serial {int irq; int uses_dma_in; int enabled; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_RETVAL (int) ;
 int NR_PORTS ;
 unsigned long* R_IRQ_MASK2_RD ;
 int SIMCOUT (char const*,int ) ;
 int receive_chars_dma (struct e100_serial*) ;
 struct e100_serial* rs_table ;
 int strlen (char const*) ;

__attribute__((used)) static irqreturn_t
rec_interrupt(int irq, void *dev_id)
{
 struct e100_serial *info;
 unsigned long ireg;
 int i;
 int handled = 0;
 ireg = *R_IRQ_MASK2_RD;

 for (i = 0; i < NR_PORTS; i++) {
  info = rs_table + i;
  if (!info->enabled || !info->uses_dma_in)
   continue;

  if (ireg & ((info->irq << 2) | (info->irq << 3))) {
   handled = 1;

   receive_chars_dma(info);
  }



 }
 return IRQ_RETVAL(handled);
}
