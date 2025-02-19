
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_4__ {scalar_t__ twos_comp; } ;
struct TYPE_3__ {int n_ai_bits; } ;


 int CR_CHAN (int ) ;
 scalar_t__ PCMAD_CONVERT ;
 scalar_t__ PCMAD_LSB ;
 scalar_t__ PCMAD_MSB ;
 scalar_t__ PCMAD_STATUS ;
 int TIMEOUT ;
 TYPE_2__* devpriv ;
 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;
 TYPE_1__* this_board ;

__attribute__((used)) static int pcmad_ai_insn_read(struct comedi_device *dev,
         struct comedi_subdevice *s,
         struct comedi_insn *insn, unsigned int *data)
{
 int i;
 int chan;
 int n;

 chan = CR_CHAN(insn->chanspec);

 for (n = 0; n < insn->n; n++) {
  outb(chan, dev->iobase + PCMAD_CONVERT);

  for (i = 0; i < TIMEOUT; i++) {
   if ((inb(dev->iobase + PCMAD_STATUS) & 0x3) == 0x3)
    break;
  }
  data[n] = inb(dev->iobase + PCMAD_LSB);
  data[n] |= (inb(dev->iobase + PCMAD_MSB) << 8);

  if (devpriv->twos_comp) {
   data[n] ^= (1 << (this_board->n_ai_bits - 1));
  }
 }

 return n;
}
