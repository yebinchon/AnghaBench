
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int state; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {int dummy; } ;


 int CMD_SetRelaysOutput ;
 int pci1760_mbxrequest (struct comedi_device*,unsigned char*,unsigned char*) ;

__attribute__((used)) static int pci1760_insn_bits_do(struct comedi_device *dev,
    struct comedi_subdevice *s,
    struct comedi_insn *insn, unsigned int *data)
{
 int ret;
 unsigned char omb[4] = {
  0x00,
  0x00,
  CMD_SetRelaysOutput,
  0x00
 };
 unsigned char imb[4];

 if (data[0]) {
  s->state &= ~data[0];
  s->state |= (data[0] & data[1]);
  omb[0] = s->state;
  ret = pci1760_mbxrequest(dev, omb, imb);
  if (!ret)
   return ret;
 }
 data[1] = s->state;

 return 2;
}
