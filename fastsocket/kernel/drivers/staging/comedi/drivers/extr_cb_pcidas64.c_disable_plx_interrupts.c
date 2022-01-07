
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ plx9080_iobase; scalar_t__ plx_intcsr_bits; } ;


 scalar_t__ PLX_INTRCS_REG ;
 TYPE_1__* priv (struct comedi_device*) ;
 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static void disable_plx_interrupts(struct comedi_device *dev)
{
 priv(dev)->plx_intcsr_bits = 0;
 writel(priv(dev)->plx_intcsr_bits,
        priv(dev)->plx9080_iobase + PLX_INTRCS_REG);
}
