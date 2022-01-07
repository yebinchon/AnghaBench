
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {unsigned int* caldac; int command5_bits; int (* write_byte ) (int,scalar_t__) ;} ;


 int CALDAC_LOAD_BIT ;
 scalar_t__ COMMAND5_REG ;
 int EEPROM_EN_BIT ;
 int EEPROM_WRITE_UNPROTECT_BIT ;
 TYPE_1__* devpriv ;
 int labpc_serial_out (struct comedi_device*,unsigned int,int) ;
 int stub1 (int,scalar_t__) ;
 int stub2 (int,scalar_t__) ;
 int stub3 (int,scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static void write_caldac(struct comedi_device *dev, unsigned int channel,
    unsigned int value)
{
 if (value == devpriv->caldac[channel])
  return;
 devpriv->caldac[channel] = value;


 devpriv->command5_bits &=
     ~CALDAC_LOAD_BIT & ~EEPROM_EN_BIT & ~EEPROM_WRITE_UNPROTECT_BIT;
 udelay(1);
 devpriv->write_byte(devpriv->command5_bits, dev->iobase + COMMAND5_REG);


 labpc_serial_out(dev, channel, 4);

 labpc_serial_out(dev, value, 8);


 devpriv->command5_bits |= CALDAC_LOAD_BIT;
 udelay(1);
 devpriv->write_byte(devpriv->command5_bits, dev->iobase + COMMAND5_REG);
 devpriv->command5_bits &= ~CALDAC_LOAD_BIT;
 udelay(1);
 devpriv->write_byte(devpriv->command5_bits, dev->iobase + COMMAND5_REG);
}
