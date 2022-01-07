
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {unsigned int n_chan; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_3__ {unsigned int* shadow_samples; } ;
struct TYPE_4__ {unsigned int iobase; TYPE_1__ ao; } ;


 unsigned int CR_CHAN (int ) ;
 unsigned int CR_RANGE (int ) ;
 int outb (unsigned char,unsigned int) ;
 TYPE_2__* subpriv ;
 int wait_dac_ready (unsigned int) ;

__attribute__((used)) static int ao_winsn(struct comedi_device *dev, struct comedi_subdevice *s,
      struct comedi_insn *insn, unsigned int *data)
{
 int n;
 unsigned iobase = subpriv->iobase, iooffset = 0;

 for (n = 0; n < insn->n; n++) {
  unsigned chan = CR_CHAN(insn->chanspec), range =
      CR_RANGE(insn->chanspec);
  if (chan < s->n_chan) {
   unsigned char command_byte = 0, range_byte =
       range & ((1 << 4) - 1);
   if (chan >= 4)
    chan -= 4, iooffset += 4;

   outb(range_byte, iobase + iooffset + 0);
   outb(0, iobase + iooffset + 1);


   command_byte = (chan << 1) | 0x60;
   outb(command_byte, iobase + iooffset + 2);

   wait_dac_ready(iobase + iooffset);

   outb(data[n] & 0xff, iobase + iooffset + 0);
   outb((data[n] >> 8) & 0xff, iobase + iooffset + 1);
   command_byte = 0x70 | (chan << 1);

   outb(command_byte, iobase + iooffset + 2);

   wait_dac_ready(iobase + iooffset);

   subpriv->ao.shadow_samples[chan] = data[n];
  }
 }
 return n;
}
