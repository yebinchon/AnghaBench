
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int* last_data; } ;
union pci20xxx_subdev_private {TYPE_1__ pci20006; } ;
struct comedi_subdevice {union pci20xxx_subdev_private* private; } ;
struct comedi_insn {int chanspec; } ;
struct comedi_device {int dummy; } ;


 size_t CR_CHAN (int ) ;

__attribute__((used)) static int pci20006_insn_read(struct comedi_device *dev,
         struct comedi_subdevice *s,
         struct comedi_insn *insn, unsigned int *data)
{
 union pci20xxx_subdev_private *sdp = s->private;

 data[0] = sdp->pci20006.last_data[CR_CHAN(insn->chanspec)];

 return 1;
}
