
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int uint8_t ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {unsigned int* caldac_value; scalar_t__ control_status; } ;


 scalar_t__ CALIBRATION_REG ;
 int SELECT_8800_BIT ;
 int cal_enable_bits (struct comedi_device*) ;
 int comedi_error (struct comedi_device*,char*) ;
 TYPE_1__* devpriv ;
 int outw (int,scalar_t__) ;
 int udelay (int const) ;
 int write_calibration_bitstream (struct comedi_device*,int,unsigned int,int const) ;

__attribute__((used)) static int caldac_8800_write(struct comedi_device *dev, unsigned int address,
        uint8_t value)
{
 static const int num_caldac_channels = 8;
 static const int bitstream_length = 11;
 unsigned int bitstream = ((address & 0x7) << 8) | value;
 static const int caldac_8800_udelay = 1;

 if (address >= num_caldac_channels) {
  comedi_error(dev, "illegal caldac channel");
  return -1;
 }

 if (value == devpriv->caldac_value[address])
  return 1;

 devpriv->caldac_value[address] = value;

 write_calibration_bitstream(dev, cal_enable_bits(dev), bitstream,
        bitstream_length);

 udelay(caldac_8800_udelay);
 outw(cal_enable_bits(dev) | SELECT_8800_BIT,
      devpriv->control_status + CALIBRATION_REG);
 udelay(caldac_8800_udelay);
 outw(cal_enable_bits(dev), devpriv->control_status + CALIBRATION_REG);

 return 1;
}
