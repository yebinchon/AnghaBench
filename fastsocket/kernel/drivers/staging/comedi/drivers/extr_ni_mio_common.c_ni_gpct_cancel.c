
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct {int counter_index; } ;
struct comedi_subdevice {struct ni_gpct* private; } ;
struct comedi_device {int dummy; } ;


 int ni_e_series_enable_second_irq (struct comedi_device*,int ,int ) ;
 int ni_release_gpct_mite_channel (struct comedi_device*,int ) ;
 int ni_tio_cancel (struct ni_gpct*) ;

__attribute__((used)) static int ni_gpct_cancel(struct comedi_device *dev, struct comedi_subdevice *s)
{
 return 0;

}
