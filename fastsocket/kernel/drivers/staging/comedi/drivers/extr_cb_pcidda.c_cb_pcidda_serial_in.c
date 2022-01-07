
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ dac; } ;


 scalar_t__ DACALIBRATION1 ;
 int SERIAL_OUT_BIT ;
 TYPE_1__* devpriv ;
 int inw_p (scalar_t__) ;

__attribute__((used)) static unsigned int cb_pcidda_serial_in(struct comedi_device *dev)
{
 unsigned int value = 0;
 int i;
 const int value_width = 16;

 for (i = 1; i <= value_width; i++) {

  if (inw_p(devpriv->dac + DACALIBRATION1) & SERIAL_OUT_BIT) {
   value |= 1 << (value_width - i);
  }
 }

 return value;
}
