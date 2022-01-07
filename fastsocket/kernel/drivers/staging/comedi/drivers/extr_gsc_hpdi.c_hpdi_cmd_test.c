
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {int dummy; } ;
struct TYPE_2__ {scalar_t__ dio_config_output; } ;


 int EINVAL ;
 int di_cmd_test (struct comedi_device*,struct comedi_subdevice*,struct comedi_cmd*) ;
 TYPE_1__* priv (struct comedi_device*) ;

__attribute__((used)) static int hpdi_cmd_test(struct comedi_device *dev, struct comedi_subdevice *s,
    struct comedi_cmd *cmd)
{
 if (priv(dev)->dio_config_output) {
  return -EINVAL;
 } else
  return di_cmd_test(dev, s, cmd);
}
