
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;


 int CAL_ADC_Data_67xx ;
 int CAL_ADC_Status_67xx ;
 int CSCMD_COMMAND ;
 int CSCMD_SINGLE_CONVERSION ;
 unsigned short CSS_OSC_DETECT ;
 unsigned short CSS_OVERRANGE ;
 int EIO ;
 int ETIME ;
 int comedi_error (struct comedi_device*,char*) ;
 int cs5529_command (struct comedi_device*,int) ;
 int cs5529_wait_for_idle (struct comedi_device*) ;
 unsigned short ni_ao_win_inw (struct comedi_device*,int ) ;
 int printk (char*) ;

__attribute__((used)) static int cs5529_do_conversion(struct comedi_device *dev, unsigned short *data)
{
 int retval;
 unsigned short status;

 cs5529_command(dev, CSCMD_COMMAND | CSCMD_SINGLE_CONVERSION);
 retval = cs5529_wait_for_idle(dev);
 if (retval) {
  comedi_error(dev,
        "timeout or signal in cs5529_do_conversion()");
  return -ETIME;
 }
 status = ni_ao_win_inw(dev, CAL_ADC_Status_67xx);
 if (status & CSS_OSC_DETECT) {
  printk
      ("ni_mio_common: cs5529 conversion error, status CSS_OSC_DETECT\n");
  return -EIO;
 }
 if (status & CSS_OVERRANGE) {
  printk
      ("ni_mio_common: cs5529 conversion error, overrange (ignoring)\n");
 }
 if (data) {
  *data = ni_ao_win_inw(dev, CAL_ADC_Data_67xx);

  *data ^= (1 << 15);
 }
 return 0;
}
