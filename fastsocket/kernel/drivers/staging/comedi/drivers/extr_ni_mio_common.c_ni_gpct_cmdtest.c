
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct {int dummy; } ;
struct comedi_subdevice {struct ni_gpct* private; } ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {int dummy; } ;


 int ENOTSUPP ;
 int ni_tio_cmdtest (struct ni_gpct*,struct comedi_cmd*) ;

__attribute__((used)) static int ni_gpct_cmdtest(struct comedi_device *dev,
      struct comedi_subdevice *s, struct comedi_cmd *cmd)
{





 return -ENOTSUPP;

}
