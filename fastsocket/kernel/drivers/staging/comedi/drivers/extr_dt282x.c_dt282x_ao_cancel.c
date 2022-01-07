
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ supcsr; scalar_t__ dacsr; } ;


 int DT2821_DACINIT ;
 TYPE_1__* devpriv ;
 int dt282x_disable_dma (struct comedi_device*) ;
 int update_dacsr (int ) ;
 int update_supcsr (int ) ;

__attribute__((used)) static int dt282x_ao_cancel(struct comedi_device *dev,
       struct comedi_subdevice *s)
{
 dt282x_disable_dma(dev);

 devpriv->dacsr = 0;
 update_dacsr(0);

 devpriv->supcsr = 0;
 update_supcsr(DT2821_DACINIT);

 return 0;
}
