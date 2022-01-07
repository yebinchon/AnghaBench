
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int io_bits; } ;
struct comedi_device {unsigned long iobase; struct comedi_subdevice* subdevices; } ;


 int CR_A_IO ;
 int CR_B_IO ;
 int CR_CW ;
 int CR_C_IO ;
 unsigned long SIZE_8255 ;
 unsigned long _8255_CR ;
 int compute_buffer (int,int,struct comedi_subdevice*) ;
 int outb (int,unsigned long) ;

__attribute__((used)) static void do_3724_config(struct comedi_device *dev,
      struct comedi_subdevice *s, int chanspec)
{
 int config;
 int buffer_config;
 unsigned long port_8255_cfg;

 config = CR_CW;
 buffer_config = 0;


 if (!(s->io_bits & 0x0000ff)) {
  config |= CR_A_IO;
 }
 if (!(s->io_bits & 0x00ff00)) {
  config |= CR_B_IO;
 }
 if (!(s->io_bits & 0xff0000)) {
  config |= CR_C_IO;
 }

 buffer_config = compute_buffer(0, 0, dev->subdevices);
 buffer_config = compute_buffer(buffer_config, 1, (dev->subdevices) + 1);

 if (s == dev->subdevices) {
  port_8255_cfg = dev->iobase + _8255_CR;
 } else {
  port_8255_cfg = dev->iobase + SIZE_8255 + _8255_CR;
 }
 outb(buffer_config, dev->iobase + 8);

 outb(config, port_8255_cfg);
}
