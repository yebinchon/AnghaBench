
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct comedi_subdevice* subdevices; } ;
struct TYPE_2__ {scalar_t__ reg_type; } ;


 int ADC_FIFO_Data_611x ;
 int NI_AI_SUBDEV ;
 int XXX_Status ;
 TYPE_1__ boardtype ;
 int cfc_write_to_buffer (struct comedi_subdevice*,short) ;
 int ni_readb (int ) ;
 int ni_readl (int ) ;
 scalar_t__ ni_reg_611x ;

__attribute__((used)) static void get_last_sample_611x(struct comedi_device *dev)
{
 struct comedi_subdevice *s = dev->subdevices + NI_AI_SUBDEV;
 short data;
 u32 dl;

 if (boardtype.reg_type != ni_reg_611x)
  return;


 if (ni_readb(XXX_Status) & 0x80) {
  dl = ni_readl(ADC_FIFO_Data_611x);
  data = (dl & 0xffff);
  cfc_write_to_buffer(s, data);
 }
}
