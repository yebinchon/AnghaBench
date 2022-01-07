
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {int command5_bits; int (* write_byte ) (int,scalar_t__) ;} ;


 scalar_t__ COMMAND5_REG ;
 int EEPROM_EN_BIT ;
 int EEPROM_WRITE_UNPROTECT_BIT ;
 TYPE_1__* devpriv ;
 unsigned int labpc_serial_in (struct comedi_device*) ;
 int labpc_serial_out (struct comedi_device*,int const,int const) ;
 int stub1 (int,scalar_t__) ;
 int stub2 (int,scalar_t__) ;
 int stub3 (int,scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static unsigned int labpc_eeprom_read_status(struct comedi_device *dev)
{
 unsigned int value;
 const int read_status_instruction = 0x5;
 const int write_length = 8;


 devpriv->command5_bits &= ~EEPROM_EN_BIT;
 udelay(1);
 devpriv->write_byte(devpriv->command5_bits, dev->iobase + COMMAND5_REG);
 devpriv->command5_bits |= EEPROM_EN_BIT | EEPROM_WRITE_UNPROTECT_BIT;
 udelay(1);
 devpriv->write_byte(devpriv->command5_bits, dev->iobase + COMMAND5_REG);


 labpc_serial_out(dev, read_status_instruction, write_length);

 value = labpc_serial_in(dev);


 devpriv->command5_bits &= ~EEPROM_EN_BIT & ~EEPROM_WRITE_UNPROTECT_BIT;
 udelay(1);
 devpriv->write_byte(devpriv->command5_bits, dev->iobase + COMMAND5_REG);

 return value;
}
