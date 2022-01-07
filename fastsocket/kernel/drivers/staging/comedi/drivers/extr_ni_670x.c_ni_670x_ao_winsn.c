
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_4__ {unsigned int* ao_readback; TYPE_1__* mite; } ;
struct TYPE_3__ {scalar_t__ daq_io_addr; } ;


 scalar_t__ AO_CHAN_OFFSET ;
 scalar_t__ AO_VALUE_OFFSET ;
 int CR_CHAN (int ) ;
 TYPE_2__* devpriv ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static int ni_670x_ao_winsn(struct comedi_device *dev,
       struct comedi_subdevice *s,
       struct comedi_insn *insn, unsigned int *data)
{
 int i;
 int chan = CR_CHAN(insn->chanspec);
 for (i = 0; i < insn->n; i++) {
  writel(((chan & 15) << 1) | ((chan & 16) >> 4), devpriv->mite->daq_io_addr + AO_CHAN_OFFSET);
  writel(data[i], devpriv->mite->daq_io_addr + AO_VALUE_OFFSET);
  devpriv->ao_readback[chan] = data[i];
 }

 return i;
}
