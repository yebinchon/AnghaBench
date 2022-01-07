
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {unsigned int* ao_readback; } ;


 size_t CR_CHAN (int ) ;
 int DT_C_WRITE_DAIM ;
 TYPE_1__* devpriv ;
 int dt2801_writecmd (struct comedi_device*,int ) ;
 int dt2801_writedata (struct comedi_device*,size_t) ;
 int dt2801_writedata2 (struct comedi_device*,unsigned int) ;

__attribute__((used)) static int dt2801_ao_insn_write(struct comedi_device *dev,
    struct comedi_subdevice *s,
    struct comedi_insn *insn, unsigned int *data)
{
 dt2801_writecmd(dev, DT_C_WRITE_DAIM);
 dt2801_writedata(dev, CR_CHAN(insn->chanspec));
 dt2801_writedata2(dev, data[0]);

 devpriv->ao_readback[CR_CHAN(insn->chanspec)] = data[0];

 return 1;
}
