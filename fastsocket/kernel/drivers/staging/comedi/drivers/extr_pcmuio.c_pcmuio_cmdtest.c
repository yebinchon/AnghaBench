
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {int dummy; } ;


 int comedi_pcm_cmdtest (struct comedi_device*,struct comedi_subdevice*,struct comedi_cmd*) ;

__attribute__((used)) static int
pcmuio_cmdtest(struct comedi_device *dev, struct comedi_subdevice *s,
        struct comedi_cmd *cmd)
{
 return comedi_pcm_cmdtest(dev, s, cmd);
}
