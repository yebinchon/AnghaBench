
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int chanspec; } ;
struct comedi_device {int dummy; } ;


 int CR_CHAN (int ) ;
 unsigned int read_eeprom (struct comedi_device*,int ) ;

__attribute__((used)) static int eeprom_read_insn(struct comedi_device *dev,
       struct comedi_subdevice *s,
       struct comedi_insn *insn, unsigned int *data)
{
 data[0] = read_eeprom(dev, CR_CHAN(insn->chanspec));

 return 1;
}
