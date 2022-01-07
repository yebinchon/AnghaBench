
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {unsigned int* eeprom_data; int command5_bits; int (* write_byte ) (int,scalar_t__) ;} ;


 scalar_t__ COMMAND5_REG ;
 int EEPROM_EN_BIT ;
 int EEPROM_WRITE_UNPROTECT_BIT ;
 unsigned int ETIME ;
 int comedi_error (struct comedi_device*,char*) ;
 TYPE_1__* devpriv ;
 int const labpc_eeprom_read_status (struct comedi_device*) ;
 int labpc_serial_out (struct comedi_device*,int const,int const) ;
 int stub1 (int,scalar_t__) ;
 int stub2 (int,scalar_t__) ;
 int stub3 (int,scalar_t__) ;
 int stub4 (int,scalar_t__) ;
 int stub5 (int,scalar_t__) ;
 int stub6 (int,scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static unsigned int labpc_eeprom_write(struct comedi_device *dev,
           unsigned int address, unsigned int value)
{
 const int write_enable_instruction = 0x6;
 const int write_instruction = 0x2;
 const int write_length = 8;
 const int write_in_progress_bit = 0x1;
 const int timeout = 10000;
 int i;


 for (i = 0; i < timeout; i++) {
  if ((labpc_eeprom_read_status(dev) & write_in_progress_bit) ==
      0)
   break;
 }
 if (i == timeout) {
  comedi_error(dev, "eeprom write timed out");
  return -ETIME;
 }

 devpriv->eeprom_data[address] = value;


 devpriv->command5_bits &= ~EEPROM_EN_BIT;
 udelay(1);
 devpriv->write_byte(devpriv->command5_bits, dev->iobase + COMMAND5_REG);
 devpriv->command5_bits |= EEPROM_EN_BIT | EEPROM_WRITE_UNPROTECT_BIT;
 udelay(1);
 devpriv->write_byte(devpriv->command5_bits, dev->iobase + COMMAND5_REG);


 labpc_serial_out(dev, write_enable_instruction, write_length);
 devpriv->command5_bits &= ~EEPROM_EN_BIT;
 udelay(1);
 devpriv->write_byte(devpriv->command5_bits, dev->iobase + COMMAND5_REG);


 devpriv->command5_bits |= EEPROM_EN_BIT;
 udelay(1);
 devpriv->write_byte(devpriv->command5_bits, dev->iobase + COMMAND5_REG);
 labpc_serial_out(dev, write_instruction, write_length);

 labpc_serial_out(dev, address, write_length);

 labpc_serial_out(dev, value, write_length);
 devpriv->command5_bits &= ~EEPROM_EN_BIT;
 udelay(1);
 devpriv->write_byte(devpriv->command5_bits, dev->iobase + COMMAND5_REG);


 devpriv->command5_bits &= ~EEPROM_EN_BIT & ~EEPROM_WRITE_UNPROTECT_BIT;
 udelay(1);
 devpriv->write_byte(devpriv->command5_bits, dev->iobase + COMMAND5_REG);

 return 0;
}
