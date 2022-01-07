
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dio200_subdev_intr {scalar_t__ stopcount; unsigned int valid_isns; unsigned int enabled_isns; int iobase; scalar_t__ has_int_sce; scalar_t__ active; int continuous; } ;
struct comedi_subdevice {TYPE_1__* async; struct dio200_subdev_intr* private; } ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {unsigned int chanlist_len; int * chanlist; } ;
struct TYPE_2__ {int events; struct comedi_cmd cmd; } ;


 int COMEDI_CB_EOA ;
 unsigned int CR_CHAN (int ) ;
 int outb (unsigned int,int ) ;

__attribute__((used)) static int dio200_start_intr(struct comedi_device *dev,
        struct comedi_subdevice *s)
{
 unsigned int n;
 unsigned isn_bits;
 struct dio200_subdev_intr *subpriv = s->private;
 struct comedi_cmd *cmd = &s->async->cmd;
 int retval = 0;

 if (!subpriv->continuous && subpriv->stopcount == 0) {

  s->async->events |= COMEDI_CB_EOA;
  subpriv->active = 0;
  retval = 1;
 } else {

  isn_bits = 0;
  if (cmd->chanlist) {
   for (n = 0; n < cmd->chanlist_len; n++) {
    isn_bits |= (1U << CR_CHAN(cmd->chanlist[n]));
   }
  }
  isn_bits &= subpriv->valid_isns;

  subpriv->enabled_isns = isn_bits;
  if (subpriv->has_int_sce) {
   outb(isn_bits, subpriv->iobase);
  }
 }

 return retval;
}
