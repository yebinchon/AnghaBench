
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {unsigned int state; int n_chan; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {unsigned long* iobases; } ;


 int CHANS_PER_PORT ;
 int EINVAL ;
 unsigned char inb (unsigned long) ;
 int outb (unsigned char,unsigned long) ;
 int printk (char*,unsigned int,...) ;
 TYPE_1__* subpriv ;

__attribute__((used)) static int pcmmio_dio_insn_bits(struct comedi_device *dev,
    struct comedi_subdevice *s,
    struct comedi_insn *insn, unsigned int *data)
{
 int byte_no;
 if (insn->n != 2)
  return -EINVAL;
 s->state = 0;

 for (byte_no = 0; byte_no < s->n_chan / CHANS_PER_PORT; ++byte_no) {

  unsigned long ioaddr = subpriv->iobases[byte_no],

      offset = byte_no * 8;

  unsigned char byte = 0,

      write_mask_byte = (data[0] >> offset) & 0xff,

      data_byte = (data[1] >> offset) & 0xff;

  byte = inb(ioaddr);
  if (write_mask_byte) {

   byte &= ~write_mask_byte;
   byte |= ~data_byte & write_mask_byte;

   outb(byte, ioaddr);
  }





  s->state |= ((unsigned int)byte) << offset;
 }


 data[1] = ~s->state;






 return 2;
}
