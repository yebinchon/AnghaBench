
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


 int EINVAL ;
 scalar_t__ Port_Register (int) ;
 TYPE_2__* devpriv ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static int ni6527_do_insn_bits(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn, unsigned int *data)
{
 if (insn->n != 2)
  return -EINVAL;
 if (data[0]) {
  s->state &= ~data[0];
  s->state |= (data[0] & data[1]);



  if (data[0] & 0x0000ff) {
   writeb((s->state ^ 0xff),
          devpriv->mite->daq_io_addr + Port_Register(3));
  }
  if (data[0] & 0x00ff00) {
   writeb((s->state >> 8) ^ 0xff,
          devpriv->mite->daq_io_addr + Port_Register(4));
  }
  if (data[0] & 0xff0000) {
   writeb((s->state >> 16) ^ 0xff,
          devpriv->mite->daq_io_addr + Port_Register(5));
  }
 }
 data[1] = s->state;

 return 2;
}
