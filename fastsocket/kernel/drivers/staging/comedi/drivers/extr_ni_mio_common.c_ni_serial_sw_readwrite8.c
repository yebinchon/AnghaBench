
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int serial_interval_ns; int (* stc_readw ) (struct comedi_device*,int ) ;int dio_control; int (* stc_writew ) (struct comedi_device*,int ,int ) ;int dio_output; } ;


 int DIO_Control_Register ;
 int DIO_Output_Register ;
 int DIO_Parallel_Input_Register ;
 int DIO_SDIN ;
 int DIO_SDOUT ;
 int DIO_Software_Serial_Control ;
 TYPE_1__* devpriv ;
 int printk (char*,unsigned char) ;
 int stub1 (struct comedi_device*,int ,int ) ;
 int stub2 (struct comedi_device*,int ,int ) ;
 int stub3 (struct comedi_device*,int ,int ) ;
 int stub4 (struct comedi_device*,int ) ;
 int udelay (int) ;

__attribute__((used)) static int ni_serial_sw_readwrite8(struct comedi_device *dev,
       struct comedi_subdevice *s,
       unsigned char data_out,
       unsigned char *data_in)
{
 unsigned char mask, input = 0;






 udelay((devpriv->serial_interval_ns + 999) / 1000);

 for (mask = 0x80; mask; mask >>= 1) {



  devpriv->dio_output &= ~DIO_SDOUT;
  if (data_out & mask) {
   devpriv->dio_output |= DIO_SDOUT;
  }
  devpriv->stc_writew(dev, devpriv->dio_output,
        DIO_Output_Register);



  devpriv->dio_control |= DIO_Software_Serial_Control;
  devpriv->stc_writew(dev, devpriv->dio_control,
        DIO_Control_Register);

  udelay((devpriv->serial_interval_ns + 999) / 2000);

  devpriv->dio_control &= ~DIO_Software_Serial_Control;
  devpriv->stc_writew(dev, devpriv->dio_control,
        DIO_Control_Register);

  udelay((devpriv->serial_interval_ns + 999) / 2000);


  if (devpriv->stc_readw(dev,
           DIO_Parallel_Input_Register) & DIO_SDIN)
  {

   input |= mask;
  }
 }



 if (data_in)
  *data_in = input;

 return 0;
}
