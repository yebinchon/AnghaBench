
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {unsigned int clock_and_fout; } ;


 unsigned int FOUT_Divider_mask ;
 TYPE_1__* devpriv ;

__attribute__((used)) static int ni_freq_out_insn_read(struct comedi_device *dev,
     struct comedi_subdevice *s,
     struct comedi_insn *insn, unsigned int *data)
{
 data[0] = devpriv->clock_and_fout & FOUT_Divider_mask;
 return 1;
}
