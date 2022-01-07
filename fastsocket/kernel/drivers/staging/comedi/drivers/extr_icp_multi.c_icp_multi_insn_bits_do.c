
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {unsigned int state; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ io_addr; } ;


 scalar_t__ ICP_MULTI_DI ;
 scalar_t__ ICP_MULTI_DO ;
 TYPE_1__* devpriv ;
 int printk (char*,...) ;
 unsigned int readw (scalar_t__) ;
 int writew (unsigned int,scalar_t__) ;

__attribute__((used)) static int icp_multi_insn_bits_do(struct comedi_device *dev,
      struct comedi_subdevice *s,
      struct comedi_insn *insn, unsigned int *data)
{




 if (data[0]) {
  s->state &= ~data[0];
  s->state |= (data[0] & data[1]);

  printk("Digital outputs = %4x \n", s->state);

  writew(s->state, devpriv->io_addr + ICP_MULTI_DO);
 }

 data[1] = readw(devpriv->io_addr + ICP_MULTI_DI);




 return 2;
}
