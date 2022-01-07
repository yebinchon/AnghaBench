
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {unsigned long iobase; } ;


 char CR_CHAN (int ) ;
 int inb (unsigned long) ;
 int outb (char,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static int fl512_ai_insn(struct comedi_device *dev,
    struct comedi_subdevice *s, struct comedi_insn *insn,
    unsigned int *data)
{
 int n;
 unsigned int lo_byte, hi_byte;
 char chan = CR_CHAN(insn->chanspec);
 unsigned long iobase = dev->iobase;

 for (n = 0; n < insn->n; n++) {


  outb(chan, iobase + 2);
  outb(0, iobase + 3);

  udelay(30);
  lo_byte = inb(iobase + 2);
  hi_byte = inb(iobase + 3) & 0xf;
  data[n] = lo_byte + (hi_byte << 8);
 }
 return n;
}
