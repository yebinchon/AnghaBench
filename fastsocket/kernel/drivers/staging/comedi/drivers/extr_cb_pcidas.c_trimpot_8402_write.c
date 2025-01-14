
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ control_status; } ;


 scalar_t__ CALIBRATION_REG ;
 unsigned int SELECT_TRIMPOT_BIT ;
 unsigned int cal_enable_bits (struct comedi_device*) ;
 TYPE_1__* devpriv ;
 int outw (unsigned int,scalar_t__) ;
 int udelay (int const) ;
 int write_calibration_bitstream (struct comedi_device*,unsigned int,unsigned int,int const) ;

__attribute__((used)) static int trimpot_8402_write(struct comedi_device *dev, unsigned int channel,
         uint8_t value)
{
 static const int bitstream_length = 10;
 unsigned int bitstream = ((channel & 0x3) << 8) | (value & 0xff);
 unsigned int register_bits;
 static const int ad8402_udelay = 1;

 register_bits = cal_enable_bits(dev) | SELECT_TRIMPOT_BIT;
 udelay(ad8402_udelay);
 outw(register_bits, devpriv->control_status + CALIBRATION_REG);

 write_calibration_bitstream(dev, register_bits, bitstream,
        bitstream_length);

 udelay(ad8402_udelay);
 outw(cal_enable_bits(dev), devpriv->control_status + CALIBRATION_REG);

 return 0;
}
