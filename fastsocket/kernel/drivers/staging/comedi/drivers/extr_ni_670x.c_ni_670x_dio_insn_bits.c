
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {unsigned int state; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* mite; } ;
struct TYPE_3__ {scalar_t__ daq_io_addr; } ;


 scalar_t__ DIO_PORT0_DATA_OFFSET ;
 int EINVAL ;
 TYPE_2__* devpriv ;
 unsigned int readl (scalar_t__) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static int ni_670x_dio_insn_bits(struct comedi_device *dev,
     struct comedi_subdevice *s,
     struct comedi_insn *insn, unsigned int *data)
{
 if (insn->n != 2)
  return -EINVAL;



 if (data[0]) {
  s->state &= ~data[0];
  s->state |= data[0] & data[1];
  writel(s->state,
         devpriv->mite->daq_io_addr + DIO_PORT0_DATA_OFFSET);
 }



 data[1] = readl(devpriv->mite->daq_io_addr + DIO_PORT0_DATA_OFFSET);

 return 2;
}
