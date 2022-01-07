
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int state; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;


 int EINVAL ;
 int SUBS_DIN ;
 int SUBS_DOUT ;
 unsigned int dt3k_readsingle (struct comedi_device*,int ,int ,int ) ;
 int dt3k_writesingle (struct comedi_device*,int ,int ,unsigned int) ;

__attribute__((used)) static int dt3k_dio_insn_bits(struct comedi_device *dev,
         struct comedi_subdevice *s,
         struct comedi_insn *insn, unsigned int *data)
{
 if (insn->n != 2)
  return -EINVAL;

 if (data[0]) {
  s->state &= ~data[0];
  s->state |= data[1] & data[0];
  dt3k_writesingle(dev, SUBS_DOUT, 0, s->state);
 }
 data[1] = dt3k_readsingle(dev, SUBS_DIN, 0, 0);

 return 2;
}
