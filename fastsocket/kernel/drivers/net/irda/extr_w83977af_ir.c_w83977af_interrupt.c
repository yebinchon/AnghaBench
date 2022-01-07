
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fir_base; scalar_t__ speed; } ;
struct w83977af_ir {TYPE_1__ io; } ;
struct net_device {int dummy; } ;
typedef int irqreturn_t ;
typedef int __u8 ;


 scalar_t__ ICR ;
 int IRQ_RETVAL (int) ;
 scalar_t__ ISR ;
 scalar_t__ PIO_MAX_SPEED ;
 int SET0 ;
 scalar_t__ SSR ;
 int inb (scalar_t__) ;
 struct w83977af_ir* netdev_priv (struct net_device*) ;
 int outb (int,scalar_t__) ;
 int switch_bank (int,int ) ;
 int w83977af_fir_interrupt (struct w83977af_ir*,int) ;
 int w83977af_sir_interrupt (struct w83977af_ir*,int) ;

__attribute__((used)) static irqreturn_t w83977af_interrupt(int irq, void *dev_id)
{
 struct net_device *dev = dev_id;
 struct w83977af_ir *self;
 __u8 set, icr, isr;
 int iobase;

 self = netdev_priv(dev);

 iobase = self->io.fir_base;


 set = inb(iobase+SSR);
 switch_bank(iobase, SET0);

 icr = inb(iobase+ICR);
 isr = inb(iobase+ISR) & icr;

 outb(0, iobase+ICR);

 if (isr) {

  if (self->io.speed > PIO_MAX_SPEED )
   icr = w83977af_fir_interrupt(self, isr);
  else
   icr = w83977af_sir_interrupt(self, isr);
 }

 outb(icr, iobase+ICR);
 outb(set, iobase+SSR);
 return IRQ_RETVAL(isr);
}
