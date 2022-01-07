
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* mite; } ;
struct TYPE_3__ {scalar_t__ daq_io_addr; } ;


 int EINVAL ;
 scalar_t__ Port_Register (int) ;
 TYPE_2__* devpriv ;
 int readb (scalar_t__) ;

__attribute__((used)) static int ni6527_di_insn_bits(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn, unsigned int *data)
{
 if (insn->n != 2)
  return -EINVAL;

 data[1] = readb(devpriv->mite->daq_io_addr + Port_Register(0));
 data[1] |= readb(devpriv->mite->daq_io_addr + Port_Register(1)) << 8;
 data[1] |= readb(devpriv->mite->daq_io_addr + Port_Register(2)) << 16;

 return 2;
}
