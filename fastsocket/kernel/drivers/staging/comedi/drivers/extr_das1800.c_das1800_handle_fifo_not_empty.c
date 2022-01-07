
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct comedi_cmd {scalar_t__ stop_src; } ;
struct TYPE_4__ {scalar_t__ count; } ;
struct TYPE_3__ {struct comedi_cmd cmd; } ;


 scalar_t__ DAS1800_CONTROL_C ;
 scalar_t__ DAS1800_FIFO ;
 scalar_t__ DAS1800_STATUS ;
 int FNE ;
 scalar_t__ TRIG_COUNT ;
 int UB ;
 int cfc_write_to_buffer (struct comedi_subdevice*,short) ;
 TYPE_2__* devpriv ;
 int inb (scalar_t__) ;
 short inw (scalar_t__) ;
 short munge_bipolar_sample (struct comedi_device*,short) ;

__attribute__((used)) static void das1800_handle_fifo_not_empty(struct comedi_device *dev,
       struct comedi_subdevice *s)
{
 short dpnt;
 int unipolar;
 struct comedi_cmd *cmd = &s->async->cmd;

 unipolar = inb(dev->iobase + DAS1800_CONTROL_C) & UB;

 while (inb(dev->iobase + DAS1800_STATUS) & FNE) {
  if (cmd->stop_src == TRIG_COUNT && devpriv->count == 0)
   break;
  dpnt = inw(dev->iobase + DAS1800_FIFO);

  if (!unipolar) ;
  dpnt = munge_bipolar_sample(dev, dpnt);
  cfc_write_to_buffer(s, dpnt);
  if (cmd->stop_src == TRIG_COUNT)
   devpriv->count--;
 }

 return;
}
