
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e100_serial {int dummy; } ;
typedef int irqreturn_t ;


 int DEBUG_LOG (int ,char*,unsigned long) ;
 int DFLOW (int ) ;
 unsigned long IO_MASK (unsigned long*,int ) ;
 int IO_STATE (int *,int ,int ) ;
 int IRQ_RETVAL (int) ;
 int NR_PORTS ;
 unsigned long* R_IRQ_MASK1_CLR ;
 unsigned long* R_IRQ_MASK1_RD ;
 int * R_VECT_MASK_SET ;
 int SERIAL_DEBUG_LINE ;
 unsigned long e100_ser_int_mask ;
 int handle_ser_rx_interrupt (struct e100_serial*) ;
 int handle_ser_tx_interrupt (struct e100_serial*) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 struct e100_serial* rs_table ;
 int ser0_ready ;
 int ser1_ready ;
 int ser2_ready ;
 int ser3_ready ;
 int serial ;
 int set ;

__attribute__((used)) static irqreturn_t
ser_interrupt(int irq, void *dev_id)
{
 static volatile int tx_started = 0;
 struct e100_serial *info;
 int i;
 unsigned long flags;
 unsigned long irq_mask1_rd;
 unsigned long data_mask = (1 << (8+2*0));
 int handled = 0;
 static volatile unsigned long reentered_ready_mask = 0;

 local_irq_save(flags);
 irq_mask1_rd = *R_IRQ_MASK1_RD;

 info = rs_table;
 irq_mask1_rd &= e100_ser_int_mask;
 for (i = 0; i < NR_PORTS; i++) {

  if (irq_mask1_rd & data_mask) {
   handled = 1;
   handle_ser_rx_interrupt(info);
  }
  info += 1;
  data_mask <<= 2;
 }
 if (!tx_started) {
  unsigned long ready_mask;
  unsigned long
  tx_started = 1;

  irq_mask1_rd &= (IO_MASK(R_IRQ_MASK1_RD, ser0_ready) |
     IO_MASK(R_IRQ_MASK1_RD, ser1_ready) |
     IO_MASK(R_IRQ_MASK1_RD, ser2_ready) |
     IO_MASK(R_IRQ_MASK1_RD, ser3_ready));
  while (irq_mask1_rd) {

   *R_IRQ_MASK1_CLR = irq_mask1_rd;

   *R_VECT_MASK_SET = IO_STATE(R_VECT_MASK_SET, serial, set);

   local_irq_enable();
   ready_mask = (1 << (8+1+2*0));
   info = rs_table;
   for (i = 0; i < NR_PORTS; i++) {

    if (irq_mask1_rd & ready_mask) {
     handled = 1;
     handle_ser_tx_interrupt(info);
    }
    info += 1;
    ready_mask <<= 2;
   }

   local_irq_disable();

   irq_mask1_rd = reentered_ready_mask;
  }
  local_irq_disable();
  tx_started = 0;
 } else {
  unsigned long ready_mask;
  ready_mask = irq_mask1_rd & (IO_MASK(R_IRQ_MASK1_RD, ser0_ready) |
          IO_MASK(R_IRQ_MASK1_RD, ser1_ready) |
          IO_MASK(R_IRQ_MASK1_RD, ser2_ready) |
          IO_MASK(R_IRQ_MASK1_RD, ser3_ready));
  if (ready_mask) {
   reentered_ready_mask |= ready_mask;

   *R_IRQ_MASK1_CLR = ready_mask;
   DFLOW(DEBUG_LOG(SERIAL_DEBUG_LINE, "ser_int reentered with TX %X\n", ready_mask));
  }
 }

 local_irq_restore(flags);
 return IRQ_RETVAL(handled);
}
