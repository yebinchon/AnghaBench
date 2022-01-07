
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct {int dummy; } ;
struct comedi_subdevice {int async; } ;
struct comedi_device {int dummy; } ;


 int COMEDI_INPUT ;
 int comedi_error (struct comedi_device*,char*) ;
 int ni_660x_request_mite_channel (struct comedi_device*,struct ni_gpct*,int ) ;
 int ni_tio_acknowledge_and_confirm (struct ni_gpct*,int *,int *,int *,int *) ;
 int ni_tio_cmd (struct ni_gpct*,int ) ;
 struct ni_gpct* subdev_to_counter (struct comedi_subdevice*) ;

__attribute__((used)) static int ni_660x_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
{
 int retval;

 struct ni_gpct *counter = subdev_to_counter(s);


 retval = ni_660x_request_mite_channel(dev, counter, COMEDI_INPUT);
 if (retval) {
  comedi_error(dev,
        "no dma channel available for use by counter");
  return retval;
 }
 ni_tio_acknowledge_and_confirm(counter, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
 retval = ni_tio_cmd(counter, s->async);

 return retval;
}
