
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct {int dummy; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {int dummy; } ;


 int ni_tio_cmdtest (struct ni_gpct*,struct comedi_cmd*) ;
 struct ni_gpct* subdev_to_counter (struct comedi_subdevice*) ;

__attribute__((used)) static int ni_660x_cmdtest(struct comedi_device *dev,
      struct comedi_subdevice *s, struct comedi_cmd *cmd)
{
 struct ni_gpct *counter = subdev_to_counter(s);

 return ni_tio_cmdtest(counter, cmd);
}
