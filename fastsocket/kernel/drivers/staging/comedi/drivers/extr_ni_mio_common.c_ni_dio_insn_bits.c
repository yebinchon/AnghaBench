
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {unsigned int state; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {unsigned int (* stc_readw ) (struct comedi_device*,int ) ;int dio_output; int (* stc_writew ) (struct comedi_device*,int ,int ) ;scalar_t__ serial_interval_ns; } ;


 int DIO_Output_Register ;
 int DIO_Parallel_Data_Mask ;
 int DIO_Parallel_Data_Out (unsigned int) ;
 int DIO_Parallel_Input_Register ;
 unsigned int DIO_SDIN ;
 unsigned int DIO_SDOUT ;
 int EBUSY ;
 int EINVAL ;
 TYPE_1__* devpriv ;
 int printk (char*,unsigned int,unsigned int) ;
 int stub1 (struct comedi_device*,int ,int ) ;
 unsigned int stub2 (struct comedi_device*,int ) ;

__attribute__((used)) static int ni_dio_insn_bits(struct comedi_device *dev,
       struct comedi_subdevice *s,
       struct comedi_insn *insn, unsigned int *data)
{



 if (insn->n != 2)
  return -EINVAL;
 if (data[0]) {


  if ((data[0] & (DIO_SDIN | DIO_SDOUT))
      && devpriv->serial_interval_ns)
   return -EBUSY;

  s->state &= ~data[0];
  s->state |= (data[0] & data[1]);
  devpriv->dio_output &= ~DIO_Parallel_Data_Mask;
  devpriv->dio_output |= DIO_Parallel_Data_Out(s->state);
  devpriv->stc_writew(dev, devpriv->dio_output,
        DIO_Output_Register);
 }
 data[1] = devpriv->stc_readw(dev, DIO_Parallel_Input_Register);

 return 2;
}
