
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int clock_and_fout; int (* stc_writew ) (struct comedi_device*,int ,int ) ;} ;


 int Clock_and_FOUT_Register ;
 int FOUT_Divider (unsigned int) ;
 int FOUT_Divider_mask ;
 int FOUT_Enable ;
 TYPE_1__* devpriv ;
 int stub1 (struct comedi_device*,int ,int ) ;
 int stub2 (struct comedi_device*,int ,int ) ;

__attribute__((used)) static int ni_freq_out_insn_write(struct comedi_device *dev,
      struct comedi_subdevice *s,
      struct comedi_insn *insn, unsigned int *data)
{
 devpriv->clock_and_fout &= ~FOUT_Enable;
 devpriv->stc_writew(dev, devpriv->clock_and_fout,
       Clock_and_FOUT_Register);
 devpriv->clock_and_fout &= ~FOUT_Divider_mask;
 devpriv->clock_and_fout |= FOUT_Divider(data[0]);
 devpriv->clock_and_fout |= FOUT_Enable;
 devpriv->stc_writew(dev, devpriv->clock_and_fout,
       Clock_and_FOUT_Register);
 return insn->n;
}
