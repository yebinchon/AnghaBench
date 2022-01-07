
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct comedi_subdevice* subdevices; } ;
typedef int data ;
struct TYPE_4__ {scalar_t__ reg_type; } ;
struct TYPE_3__ {short (* stc_readw ) (struct comedi_device*,int ) ;short* ai_fifo_buffer; } ;


 int ADC_FIFO_Data_611x ;
 int ADC_FIFO_Data_Register ;
 int AIFIFO_Control_6143 ;
 int AIFIFO_Data_6143 ;
 int AIFIFO_Status_6143 ;
 short AI_FIFO_Empty_St ;
 int AI_Status_1_Register ;
 int NI_AI_SUBDEV ;
 TYPE_2__ boardtype ;
 int cfc_write_array_to_buffer (struct comedi_subdevice*,short*,int) ;
 int cfc_write_to_buffer (struct comedi_subdevice*,short) ;
 TYPE_1__* devpriv ;
 int ni_readl (int ) ;
 short ni_readw (int ) ;
 scalar_t__ ni_reg_611x ;
 scalar_t__ ni_reg_6143 ;
 int ni_writel (int,int ) ;
 short stub1 (struct comedi_device*,int ) ;
 short stub2 (struct comedi_device*,int ) ;
 short stub3 (struct comedi_device*,int ) ;

__attribute__((used)) static void ni_handle_fifo_dregs(struct comedi_device *dev)
{
 struct comedi_subdevice *s = dev->subdevices + NI_AI_SUBDEV;
 short data[2];
 u32 dl;
 short fifo_empty;
 int i;

 if (boardtype.reg_type == ni_reg_611x) {
  while ((devpriv->stc_readw(dev,
        AI_Status_1_Register) &
   AI_FIFO_Empty_St) == 0) {
   dl = ni_readl(ADC_FIFO_Data_611x);


   data[0] = (dl >> 16);
   data[1] = (dl & 0xffff);
   cfc_write_array_to_buffer(s, data, sizeof(data));
  }
 } else if (boardtype.reg_type == ni_reg_6143) {
  i = 0;
  while (ni_readl(AIFIFO_Status_6143) & 0x04) {
   dl = ni_readl(AIFIFO_Data_6143);


   data[0] = (dl >> 16);
   data[1] = (dl & 0xffff);
   cfc_write_array_to_buffer(s, data, sizeof(data));
   i += 2;
  }

  if (ni_readl(AIFIFO_Status_6143) & 0x01) {
   ni_writel(0x01, AIFIFO_Control_6143);
   dl = ni_readl(AIFIFO_Data_6143);
   data[0] = (dl >> 16) & 0xffff;
   cfc_write_to_buffer(s, data[0]);
  }

 } else {
  fifo_empty =
      devpriv->stc_readw(dev,
           AI_Status_1_Register) & AI_FIFO_Empty_St;
  while (fifo_empty == 0) {
   for (i = 0;
        i <
        sizeof(devpriv->ai_fifo_buffer) /
        sizeof(devpriv->ai_fifo_buffer[0]); i++) {
    fifo_empty =
        devpriv->stc_readw(dev,
             AI_Status_1_Register) &
        AI_FIFO_Empty_St;
    if (fifo_empty)
     break;
    devpriv->ai_fifo_buffer[i] =
        ni_readw(ADC_FIFO_Data_Register);
   }
   cfc_write_array_to_buffer(s, devpriv->ai_fifo_buffer,
        i *
        sizeof(devpriv->
        ai_fifo_buffer[0]));
  }
 }
}
