
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ control_status; } ;


 scalar_t__ CALIBRATION_REG ;
 unsigned int SERIAL_DATA_IN_BIT ;
 TYPE_1__* devpriv ;
 int outw (unsigned int,scalar_t__) ;
 int udelay (int const) ;

__attribute__((used)) static void write_calibration_bitstream(struct comedi_device *dev,
     unsigned int register_bits,
     unsigned int bitstream,
     unsigned int bitstream_length)
{
 static const int write_delay = 1;
 unsigned int bit;

 for (bit = 1 << (bitstream_length - 1); bit; bit >>= 1) {
  if (bitstream & bit)
   register_bits |= SERIAL_DATA_IN_BIT;
  else
   register_bits &= ~SERIAL_DATA_IN_BIT;
  udelay(write_delay);
  outw(register_bits, devpriv->control_status + CALIBRATION_REG);
 }
}
