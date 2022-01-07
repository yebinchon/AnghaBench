
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {int command5_bits; int (* write_byte ) (int ,scalar_t__) ;} ;


 scalar_t__ COMMAND5_REG ;
 int SCLOCK_BIT ;
 int SDATA_BIT ;
 TYPE_1__* devpriv ;
 int stub1 (int ,scalar_t__) ;
 int stub2 (int ,scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static void labpc_serial_out(struct comedi_device *dev, unsigned int value,
        unsigned int value_width)
{
 int i;

 for (i = 1; i <= value_width; i++) {

  devpriv->command5_bits &= ~SCLOCK_BIT;

  if (value & (1 << (value_width - i)))
   devpriv->command5_bits |= SDATA_BIT;
  else
   devpriv->command5_bits &= ~SDATA_BIT;
  udelay(1);
  devpriv->write_byte(devpriv->command5_bits,
        dev->iobase + COMMAND5_REG);

  devpriv->command5_bits |= SCLOCK_BIT;
  udelay(1);
  devpriv->write_byte(devpriv->command5_bits,
        dev->iobase + COMMAND5_REG);
 }
}
