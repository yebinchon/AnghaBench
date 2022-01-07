
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ni_gpct {TYPE_1__* counter_dev; } ;
struct comedi_device {int dummy; } ;
typedef enum ni_gpct_register { ____Placeholder_ni_gpct_register } ni_gpct_register ;
struct TYPE_4__ {int (* stc_readl ) (struct comedi_device*,unsigned int) ;int (* stc_readw ) (struct comedi_device*,unsigned int) ;} ;
struct TYPE_3__ {struct comedi_device* dev; } ;


 int M_Offset_G0_DMA_Status ;
 int M_Offset_G1_DMA_Status ;






 TYPE_2__* devpriv ;
 unsigned int ni_gpct_to_stc_register (int) ;
 int ni_readw (int ) ;
 int stub1 (struct comedi_device*,unsigned int) ;
 int stub2 (struct comedi_device*,unsigned int) ;

__attribute__((used)) static unsigned ni_gpct_read_register(struct ni_gpct *counter,
          enum ni_gpct_register reg)
{
 struct comedi_device *dev = counter->counter_dev->dev;
 unsigned stc_register;
 switch (reg) {

 case 133:
  return ni_readw(M_Offset_G0_DMA_Status);
  break;
 case 130:
  return ni_readw(M_Offset_G1_DMA_Status);
  break;


 case 132:
 case 129:
 case 131:
 case 128:
  stc_register = ni_gpct_to_stc_register(reg);
  return devpriv->stc_readl(dev, stc_register);
  break;


 default:
  stc_register = ni_gpct_to_stc_register(reg);
  return devpriv->stc_readw(dev, stc_register);
  break;
 }
 return 0;
}
