
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;


 int CAL_ADC_Command_67xx ;
 int CAL_ADC_Status_67xx ;
 int CSS_ADC_BUSY ;
 int comedi_error (struct comedi_device*,char*) ;
 int ni_ao_win_inw (struct comedi_device*,int ) ;
 int ni_ao_win_outw (struct comedi_device*,unsigned short,int ) ;
 int udelay (int) ;

__attribute__((used)) static void cs5529_command(struct comedi_device *dev, unsigned short value)
{
 static const int timeout = 100;
 int i;

 ni_ao_win_outw(dev, value, CAL_ADC_Command_67xx);




 for (i = 0; i < timeout; i++) {
  if ((ni_ao_win_inw(dev, CAL_ADC_Status_67xx) & CSS_ADC_BUSY))
   break;
  udelay(1);
 }

 if (i == timeout) {
  comedi_error(dev, "possible problem - never saw adc go busy?");
 }
}
