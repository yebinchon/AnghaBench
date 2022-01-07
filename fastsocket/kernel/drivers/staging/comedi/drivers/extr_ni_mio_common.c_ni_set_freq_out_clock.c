
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {int clock_and_fout; int (* stc_writew ) (struct comedi_device*,int ,int ) ;} ;


 int Clock_and_FOUT_Register ;
 int EINVAL ;
 int FOUT_Timebase_Select ;


 TYPE_1__* devpriv ;
 int stub1 (struct comedi_device*,int ,int ) ;

__attribute__((used)) static int ni_set_freq_out_clock(struct comedi_device *dev,
     unsigned int clock_source)
{
 switch (clock_source) {
 case 129:
  devpriv->clock_and_fout &= ~FOUT_Timebase_Select;
  break;
 case 128:
  devpriv->clock_and_fout |= FOUT_Timebase_Select;
  break;
 default:
  return -EINVAL;
 }
 devpriv->stc_writew(dev, devpriv->clock_and_fout,
       Clock_and_FOUT_Register);
 return 3;
}
