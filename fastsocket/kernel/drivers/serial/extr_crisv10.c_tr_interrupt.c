
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct e100_serial {unsigned long irq; size_t line; int last_tx_active; int last_tx_active_usec; int uses_dma_out; int enabled; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int tx_dma_ints; } ;


 int DEBUG_LOG (size_t,char*,int) ;
 int DINTR2 (int ) ;
 int GET_JIFFIES_USEC () ;
 int IRQ_HANDLED ;
 int IRQ_RETVAL (int) ;
 int NR_PORTS ;
 int PROCSTAT (int ) ;
 unsigned long* R_IRQ_MASK2_RD ;
 int SIMCOUT (char const*,int ) ;
 int jiffies ;
 struct e100_serial* rs_table ;
 TYPE_1__* ser_stat ;
 int strlen (char const*) ;
 int transmit_chars_dma (struct e100_serial*) ;

__attribute__((used)) static irqreturn_t
tr_interrupt(int irq, void *dev_id)
{
 struct e100_serial *info;
 unsigned long ireg;
 int i;
 int handled = 0;
 ireg = *R_IRQ_MASK2_RD;

 for (i = 0; i < NR_PORTS; i++) {
  info = rs_table + i;
  if (!info->enabled || !info->uses_dma_out)
   continue;

  if (ireg & info->irq) {
   handled = 1;

   DINTR2(DEBUG_LOG(info->line, "tr_interrupt %i\n", i));



    PROCSTAT(ser_stat[info->line].tx_dma_ints++);
   info->last_tx_active_usec = GET_JIFFIES_USEC();
   info->last_tx_active = jiffies;
   transmit_chars_dma(info);
  }



 }
 return IRQ_RETVAL(handled);
}
