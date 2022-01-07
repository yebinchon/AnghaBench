
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct comedi_subdevice* subdevices; } ;
struct TYPE_2__ {scalar_t__ reg_type; } ;


 int AIFIFO_Control_6143 ;
 int AIFIFO_Data_6143 ;
 int AIFIFO_Status_6143 ;
 int NI_AI_SUBDEV ;
 TYPE_1__ boardtype ;
 int cfc_write_to_buffer (struct comedi_subdevice*,short) ;
 int ni_readl (int ) ;
 scalar_t__ ni_reg_6143 ;
 int ni_writel (int,int ) ;

__attribute__((used)) static void get_last_sample_6143(struct comedi_device *dev)
{
 struct comedi_subdevice *s = dev->subdevices + NI_AI_SUBDEV;
 short data;
 u32 dl;

 if (boardtype.reg_type != ni_reg_6143)
  return;


 if (ni_readl(AIFIFO_Status_6143) & 0x01) {
  ni_writel(0x01, AIFIFO_Control_6143);
  dl = ni_readl(AIFIFO_Data_6143);


  data = (dl >> 16) & 0xffff;
  cfc_write_to_buffer(s, data);
 }
}
