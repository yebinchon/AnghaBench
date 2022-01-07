
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct daqboard2000_hw {unsigned int* dacSetting; int dacControl; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {unsigned int* ao_readback; struct daqboard2000_hw* daq; } ;


 int CR_CHAN (int ) ;
 TYPE_1__* devpriv ;

__attribute__((used)) static int daqboard2000_ao_insn_write(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn,
          unsigned int *data)
{
 int i;
 int chan = CR_CHAN(insn->chanspec);
 struct daqboard2000_hw *fpga = devpriv->daq;
 int timeout;

 for (i = 0; i < insn->n; i++) {





  fpga->dacSetting[chan] = data[i];
  for (timeout = 0; timeout < 20; timeout++) {
   if ((fpga->dacControl & ((chan + 1) * 0x0010)) == 0) {
    break;
   }

  }
  devpriv->ao_readback[chan] = data[i];




 }

 return i;
}
