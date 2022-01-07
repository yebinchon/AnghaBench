
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {unsigned int (* stc_readw ) (struct comedi_device*,int ) ;int serial_interval_ns; int dio_control; int (* stc_writew ) (struct comedi_device*,int ,int ) ;int dio_output; } ;


 int DIO_Control_Register ;
 int DIO_HW_Serial_Start ;
 int DIO_Output_Register ;
 int DIO_Serial_Data_Mask ;
 int DIO_Serial_Data_Out (unsigned char) ;
 unsigned int DIO_Serial_IO_In_Progress_St ;
 int DIO_Serial_Input_Register ;
 int EBUSY ;
 int ETIME ;
 int Joint_Status_1_Register ;
 TYPE_1__* devpriv ;
 int printk (char*,...) ;
 int stub1 (struct comedi_device*,int ,int ) ;
 unsigned int stub2 (struct comedi_device*,int ) ;
 int stub3 (struct comedi_device*,int ,int ) ;
 unsigned int stub4 (struct comedi_device*,int ) ;
 unsigned char stub5 (struct comedi_device*,int ) ;
 int stub6 (struct comedi_device*,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static int ni_serial_hw_readwrite8(struct comedi_device *dev,
       struct comedi_subdevice *s,
       unsigned char data_out,
       unsigned char *data_in)
{
 unsigned int status1;
 int err = 0, count = 20;





 devpriv->dio_output &= ~DIO_Serial_Data_Mask;
 devpriv->dio_output |= DIO_Serial_Data_Out(data_out);
 devpriv->stc_writew(dev, devpriv->dio_output, DIO_Output_Register);

 status1 = devpriv->stc_readw(dev, Joint_Status_1_Register);
 if (status1 & DIO_Serial_IO_In_Progress_St) {
  err = -EBUSY;
  goto Error;
 }

 devpriv->dio_control |= DIO_HW_Serial_Start;
 devpriv->stc_writew(dev, devpriv->dio_control, DIO_Control_Register);
 devpriv->dio_control &= ~DIO_HW_Serial_Start;


 while ((status1 =
  devpriv->stc_readw(dev,
       Joint_Status_1_Register)) &
        DIO_Serial_IO_In_Progress_St) {

  udelay((devpriv->serial_interval_ns + 999) / 1000);
  if (--count < 0) {
   printk
       ("ni_serial_hw_readwrite8: SPI serial I/O didn't finish in time!\n");
   err = -ETIME;
   goto Error;
  }
 }



 udelay((devpriv->serial_interval_ns + 999) / 1000);

 if (data_in != ((void*)0)) {
  *data_in = devpriv->stc_readw(dev, DIO_Serial_Input_Register);



 }

Error:
 devpriv->stc_writew(dev, devpriv->dio_control, DIO_Control_Register);

 return err;
}
