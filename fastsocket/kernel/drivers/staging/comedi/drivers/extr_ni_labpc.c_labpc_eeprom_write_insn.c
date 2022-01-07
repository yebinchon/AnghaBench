
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int chanspec; } ;
struct comedi_device {int dummy; } ;


 int CR_CHAN (int ) ;
 int EINVAL ;
 int labpc_eeprom_write (struct comedi_device*,int,unsigned int) ;
 int printk (char*) ;

__attribute__((used)) static int labpc_eeprom_write_insn(struct comedi_device *dev,
       struct comedi_subdevice *s,
       struct comedi_insn *insn, unsigned int *data)
{
 int channel = CR_CHAN(insn->chanspec);
 int ret;


 if (channel < 16 || channel > 127) {
  printk
      ("eeprom writes are only allowed to channels 16 through 127 (the pointer and user areas)");
  return -EINVAL;
 }

 ret = labpc_eeprom_write(dev, channel, data[0]);
 if (ret < 0)
  return ret;

 return 1;
}
