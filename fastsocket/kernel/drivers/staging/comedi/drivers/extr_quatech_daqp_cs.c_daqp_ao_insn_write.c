
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct local_info_t {scalar_t__ stop; } ;
struct comedi_subdevice {scalar_t__ private; } ;
struct comedi_insn {int chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;


 unsigned int CR_CHAN (int ) ;
 scalar_t__ DAQP_AUX ;
 scalar_t__ DAQP_DA ;
 int EIO ;
 int outb (int ,scalar_t__) ;
 int outw (int,scalar_t__) ;

__attribute__((used)) static int daqp_ao_insn_write(struct comedi_device *dev,
         struct comedi_subdevice *s,
         struct comedi_insn *insn, unsigned int *data)
{
 struct local_info_t *local = (struct local_info_t *)s->private;
 int d;
 unsigned int chan;

 if (local->stop) {
  return -EIO;
 }

 chan = CR_CHAN(insn->chanspec);
 d = data[0];
 d &= 0x0fff;
 d ^= 0x0800;
 d |= chan << 12;


 outb(0, dev->iobase + DAQP_AUX);

 outw(d, dev->iobase + DAQP_DA);

 return 1;
}
