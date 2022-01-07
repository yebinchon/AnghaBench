
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {int status2_bits; int (* read_byte ) (scalar_t__) ;int command5_bits; int (* write_byte ) (int ,scalar_t__) ;} ;


 scalar_t__ COMMAND5_REG ;
 int EEPROM_OUT_BIT ;
 int SCLOCK_BIT ;
 scalar_t__ STATUS2_REG ;
 TYPE_1__* devpriv ;
 int stub1 (int ,scalar_t__) ;
 int stub2 (int ,scalar_t__) ;
 int stub3 (scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static unsigned int labpc_serial_in(struct comedi_device *dev)
{
 unsigned int value = 0;
 int i;
 const int value_width = 8;

 for (i = 1; i <= value_width; i++) {

  devpriv->command5_bits |= SCLOCK_BIT;
  udelay(1);
  devpriv->write_byte(devpriv->command5_bits,
        dev->iobase + COMMAND5_REG);

  devpriv->command5_bits &= ~SCLOCK_BIT;
  udelay(1);
  devpriv->write_byte(devpriv->command5_bits,
        dev->iobase + COMMAND5_REG);

  udelay(1);
  devpriv->status2_bits =
      devpriv->read_byte(dev->iobase + STATUS2_REG);
  if (devpriv->status2_bits & EEPROM_OUT_BIT) {
   value |= 1 << (value_width - i);
  }
 }

 return value;
}
