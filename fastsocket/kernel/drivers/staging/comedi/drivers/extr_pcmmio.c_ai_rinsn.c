
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {unsigned long iobase; } ;


 unsigned int AREF_DIFF ;
 unsigned int AREF_GROUND ;
 unsigned int CR_AREF (int ) ;
 unsigned int CR_CHAN (int ) ;
 unsigned int CR_RANGE (int ) ;
 int adc_wait_ready (unsigned long) ;
 int inb (unsigned long) ;
 int outb (unsigned char,unsigned long) ;
 TYPE_1__* subpriv ;

__attribute__((used)) static int ai_rinsn(struct comedi_device *dev, struct comedi_subdevice *s,
      struct comedi_insn *insn, unsigned int *data)
{
 int n;
 unsigned long iobase = subpriv->iobase;
 for (n = 0; n < insn->n; n++) {
  unsigned chan = CR_CHAN(insn->chanspec), range =
      CR_RANGE(insn->chanspec), aref = CR_AREF(insn->chanspec);
  unsigned char command_byte = 0;
  unsigned iooffset = 0;
  short sample, adc_adjust = 0;

  if (chan > 7)
   chan -= 8, iooffset = 4;

  if (aref != AREF_DIFF) {
   aref = AREF_GROUND;
   command_byte |= 1 << 7;
  }
  if (range < 2)
   adc_adjust = 0x8000;

  if (chan % 2) {
   command_byte |= 1 << 6;
  }


  command_byte |= ((chan / 2) & 0x3) << 4;


  command_byte |= (range & 0x3) << 2;


  outb(command_byte, iobase + iooffset + 2);

  adc_wait_ready(iobase + iooffset);

  outb(command_byte, iobase + iooffset + 2);

  adc_wait_ready(iobase + iooffset);

  sample = inb(iobase + iooffset + 0);
  sample |= inb(iobase + iooffset + 1) << 8;
  sample += adc_adjust;
  data[n] = sample;
 }

 return n;
}
