
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint8_t ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int chanspec; } ;
struct comedi_device {int dummy; } ;


 int CR_CHAN (int ) ;
 int nvram_read (struct comedi_device*,int ,unsigned int*) ;

__attribute__((used)) static int eeprom_read_insn(struct comedi_device *dev,
       struct comedi_subdevice *s,
       struct comedi_insn *insn, unsigned int *data)
{
 uint8_t nvram_data;
 int retval;

 retval = nvram_read(dev, CR_CHAN(insn->chanspec), &nvram_data);
 if (retval < 0)
  return retval;

 data[0] = nvram_data;

 return 1;
}
