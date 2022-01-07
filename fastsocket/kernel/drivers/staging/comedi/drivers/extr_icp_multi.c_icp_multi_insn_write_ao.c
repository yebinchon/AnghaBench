
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_4__ {unsigned int IntEnable; unsigned int IntStatus; int DacCmdStatus; unsigned int* ao_data; scalar_t__ io_addr; } ;
struct TYPE_3__ {int* rangecode; } ;


 int CR_CHAN (int ) ;
 int CR_RANGE (int ) ;
 int DAC_BSY ;
 unsigned int DAC_READY ;
 unsigned int DAC_ST ;
 int ETIME ;
 scalar_t__ ICP_MULTI_AO ;
 scalar_t__ ICP_MULTI_DAC_CSR ;
 scalar_t__ ICP_MULTI_INT_EN ;
 scalar_t__ ICP_MULTI_INT_STAT ;
 int comedi_error (struct comedi_device*,char*) ;
 TYPE_2__* devpriv ;
 int printk (char*,...) ;
 int readw (scalar_t__) ;
 TYPE_1__* this_board ;
 int udelay (int) ;
 int writew (unsigned int,scalar_t__) ;

__attribute__((used)) static int icp_multi_insn_write_ao(struct comedi_device *dev,
       struct comedi_subdevice *s,
       struct comedi_insn *insn, unsigned int *data)
{
 int n, chan, range, timeout;





 devpriv->IntEnable &= ~DAC_READY;
 writew(devpriv->IntEnable, devpriv->io_addr + ICP_MULTI_INT_EN);


 devpriv->IntStatus |= DAC_READY;
 writew(devpriv->IntStatus, devpriv->io_addr + ICP_MULTI_INT_STAT);


 chan = CR_CHAN(insn->chanspec);
 range = CR_RANGE(insn->chanspec);






 devpriv->DacCmdStatus &= 0xfccf;
 devpriv->DacCmdStatus |= this_board->rangecode[range];
 devpriv->DacCmdStatus |= (chan << 8);

 writew(devpriv->DacCmdStatus, devpriv->io_addr + ICP_MULTI_DAC_CSR);

 for (n = 0; n < insn->n; n++) {

  timeout = 100;
  while (timeout--) {
   if (!(readw(devpriv->io_addr +
        ICP_MULTI_DAC_CSR) & DAC_BSY))
    goto dac_ready;
   udelay(1);
  }


  comedi_error(dev, "D/A insn timeout");


  devpriv->IntEnable &= ~DAC_READY;
  writew(devpriv->IntEnable, devpriv->io_addr + ICP_MULTI_INT_EN);


  devpriv->IntStatus |= DAC_READY;
  writew(devpriv->IntStatus,
         devpriv->io_addr + ICP_MULTI_INT_STAT);


  devpriv->ao_data[chan] = 0;






  return -ETIME;

dac_ready:

  writew(data[n], devpriv->io_addr + ICP_MULTI_AO);


  devpriv->DacCmdStatus |= DAC_ST;
  writew(devpriv->DacCmdStatus,
         devpriv->io_addr + ICP_MULTI_DAC_CSR);
  devpriv->DacCmdStatus &= ~DAC_ST;


  devpriv->ao_data[chan] = data[n];
 }




 return n;
}
