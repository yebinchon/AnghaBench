
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ dac; int dac_cal1_bits; } ;


 scalar_t__ DACALIBRATION1 ;
 int SERIAL_IN_BIT ;
 TYPE_1__* devpriv ;
 int outw_p (int ,scalar_t__) ;

__attribute__((used)) static void cb_pcidda_serial_out(struct comedi_device *dev, unsigned int value,
     unsigned int num_bits)
{
 int i;

 for (i = 1; i <= num_bits; i++) {

  if (value & (1 << (num_bits - i)))
   devpriv->dac_cal1_bits |= SERIAL_IN_BIT;
  else
   devpriv->dac_cal1_bits &= ~SERIAL_IN_BIT;
  outw_p(devpriv->dac_cal1_bits, devpriv->dac + DACALIBRATION1);
 }
}
