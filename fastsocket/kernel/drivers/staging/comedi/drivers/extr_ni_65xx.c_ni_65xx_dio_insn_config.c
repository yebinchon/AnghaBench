
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct comedi_subdevice {int type; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_6__ {unsigned int* dio_direction; TYPE_1__* mite; } ;
struct TYPE_5__ {unsigned int base_port; } ;
struct TYPE_4__ {scalar_t__ daq_io_addr; } ;


 unsigned int COMEDI_INPUT ;
 unsigned int COMEDI_OUTPUT ;
 int COMEDI_SUBD_DIO ;
 int CR_CHAN (int ) ;
 int EINVAL ;




 scalar_t__ Port_Select (unsigned int) ;
 int ni_65xx_config_filter (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,unsigned int*) ;
 unsigned int ni_65xx_port_by_channel (int ) ;
 TYPE_3__* private (struct comedi_device*) ;
 TYPE_2__* sprivate (struct comedi_subdevice*) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static int ni_65xx_dio_insn_config(struct comedi_device *dev,
       struct comedi_subdevice *s,
       struct comedi_insn *insn, unsigned int *data)
{
 unsigned port;

 if (insn->n < 1)
  return -EINVAL;
 port = sprivate(s)->base_port +
     ni_65xx_port_by_channel(CR_CHAN(insn->chanspec));
 switch (data[0]) {
 case 128:
  return ni_65xx_config_filter(dev, s, insn, data);
  break;
 case 130:
  if (s->type != COMEDI_SUBD_DIO)
   return -EINVAL;
  private(dev)->dio_direction[port] = COMEDI_OUTPUT;
  writeb(0, private(dev)->mite->daq_io_addr + Port_Select(port));
  return 1;
  break;
 case 131:
  if (s->type != COMEDI_SUBD_DIO)
   return -EINVAL;
  private(dev)->dio_direction[port] = COMEDI_INPUT;
  writeb(1, private(dev)->mite->daq_io_addr + Port_Select(port));
  return 1;
  break;
 case 129:
  if (s->type != COMEDI_SUBD_DIO)
   return -EINVAL;
  data[1] = private(dev)->dio_direction[port];
  return insn->n;
  break;
 default:
  break;
 }
 return -EINVAL;
}
