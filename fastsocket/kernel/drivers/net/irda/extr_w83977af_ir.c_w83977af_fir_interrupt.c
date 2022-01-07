
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fir_base; scalar_t__ direction; } ;
struct w83977af_ir {TYPE_1__ io; } ;
typedef int __u8 ;


 int ICR_EDMAI ;
 int ICR_EFSFI ;
 int ICR_ETMRI ;
 scalar_t__ IO_XMIT ;
 scalar_t__ IR_MSL ;
 int IR_MSL_EN_TMR ;
 int ISR_DMA_I ;
 int ISR_FEND_I ;
 int ISR_FSF_I ;
 int ISR_TMR_I ;
 int SET4 ;
 scalar_t__ SSR ;
 scalar_t__ TMRH ;
 scalar_t__ TMRL ;
 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;
 int switch_bank (int,int ) ;
 int w83977af_dma_receive (struct w83977af_ir*) ;
 scalar_t__ w83977af_dma_receive_complete (struct w83977af_ir*) ;
 int w83977af_dma_write (struct w83977af_ir*,int) ;
 int w83977af_dma_xmit_complete (struct w83977af_ir*) ;

__attribute__((used)) static __u8 w83977af_fir_interrupt(struct w83977af_ir *self, int isr)
{
 __u8 new_icr = 0;
 __u8 set;
 int iobase;

 iobase = self->io.fir_base;
 set = inb(iobase+SSR);


 if (isr & (ISR_FEND_I|ISR_FSF_I)) {
  if (w83977af_dma_receive_complete(self)) {


   new_icr |= ICR_EFSFI;
  } else {



   switch_bank(iobase, SET4);
   outb(0x01, iobase+TMRL);
   outb(0x00, iobase+TMRH);


   outb(IR_MSL_EN_TMR, iobase+IR_MSL);

   new_icr |= ICR_ETMRI;
  }
 }

 if (isr & ISR_TMR_I) {

  switch_bank(iobase, SET4);
  outb(0, iobase+IR_MSL);






  if (self->io.direction == IO_XMIT) {
   w83977af_dma_write(self, iobase);

   new_icr |= ICR_EDMAI;
  } else {

   w83977af_dma_receive_complete(self);

   new_icr |= ICR_EFSFI;
  }
 }

 if (isr & ISR_DMA_I) {
  w83977af_dma_xmit_complete(self);
  w83977af_dma_receive(self);
  new_icr = ICR_EFSFI;

 }


 outb(set, iobase+SSR);

 return new_icr;
}
