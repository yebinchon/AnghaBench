
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct {int counter_index; } ;
struct comedi_subdevice {int async; struct ni_gpct* private; } ;
struct comedi_device {int dummy; } ;


 int COMEDI_INPUT ;
 int ENOTSUPP ;
 int comedi_error (struct comedi_device*,char*) ;
 int ni_e_series_enable_second_irq (struct comedi_device*,int ,int) ;
 int ni_request_gpct_mite_channel (struct comedi_device*,int ,int ) ;
 int ni_tio_acknowledge_and_confirm (struct ni_gpct*,int *,int *,int *,int *) ;
 int ni_tio_cmd (struct ni_gpct*,int ) ;

__attribute__((used)) static int ni_gpct_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
{
 int retval;
 retval = -ENOTSUPP;

 return retval;
}
