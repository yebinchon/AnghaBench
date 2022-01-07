
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {scalar_t__ start_src; } ;
struct TYPE_4__ {scalar_t__ main_iobase; } ;
struct TYPE_3__ {int * inttrig; struct comedi_cmd cmd; } ;


 scalar_t__ DAC_START_REG ;
 int EINVAL ;
 int EPIPE ;
 scalar_t__ TRIG_INT ;
 int prep_ao_dma (struct comedi_device*,struct comedi_cmd*) ;
 TYPE_2__* priv (struct comedi_device*) ;
 int set_dac_control0_reg (struct comedi_device*,struct comedi_cmd*) ;
 int writew (int ,scalar_t__) ;

__attribute__((used)) static int ao_inttrig(struct comedi_device *dev, struct comedi_subdevice *s,
        unsigned int trig_num)
{
 struct comedi_cmd *cmd = &s->async->cmd;
 int retval;

 if (trig_num != 0)
  return -EINVAL;

 retval = prep_ao_dma(dev, cmd);
 if (retval < 0)
  return -EPIPE;

 set_dac_control0_reg(dev, cmd);

 if (cmd->start_src == TRIG_INT)
  writew(0, priv(dev)->main_iobase + DAC_START_REG);

 s->async->inttrig = ((void*)0);

 return 0;
}
