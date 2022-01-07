
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ io_addr; int IntStatus; int IntEnable; int AdcCmdStatus; } ;


 int ADC_BSY ;
 int ADC_READY ;
 int ADC_ST ;
 int ETIME ;
 scalar_t__ ICP_MULTI_ADC_CSR ;
 scalar_t__ ICP_MULTI_AI ;
 scalar_t__ ICP_MULTI_INT_EN ;
 scalar_t__ ICP_MULTI_INT_STAT ;
 int comedi_error (struct comedi_device*,char*) ;
 TYPE_1__* devpriv ;
 int printk (char*,...) ;
 int readw (scalar_t__) ;
 int setup_channel_list (struct comedi_device*,struct comedi_subdevice*,int *,int) ;
 int udelay (int) ;
 int writew (int ,scalar_t__) ;

__attribute__((used)) static int icp_multi_insn_read_ai(struct comedi_device *dev,
      struct comedi_subdevice *s,
      struct comedi_insn *insn, unsigned int *data)
{
 int n, timeout;





 devpriv->IntEnable &= ~ADC_READY;
 writew(devpriv->IntEnable, devpriv->io_addr + ICP_MULTI_INT_EN);


 devpriv->IntStatus |= ADC_READY;
 writew(devpriv->IntStatus, devpriv->io_addr + ICP_MULTI_INT_STAT);


 setup_channel_list(dev, s, &insn->chanspec, 1);







 for (n = 0; n < insn->n; n++) {

  devpriv->AdcCmdStatus |= ADC_ST;
  writew(devpriv->AdcCmdStatus,
         devpriv->io_addr + ICP_MULTI_ADC_CSR);
  devpriv->AdcCmdStatus &= ~ADC_ST;






  udelay(1);







  timeout = 100;
  while (timeout--) {
   if (!(readw(devpriv->io_addr +
        ICP_MULTI_ADC_CSR) & ADC_BSY))
    goto conv_finish;
   udelay(1);
  }


  comedi_error(dev, "A/D insn timeout");


  devpriv->IntEnable &= ~ADC_READY;
  writew(devpriv->IntEnable, devpriv->io_addr + ICP_MULTI_INT_EN);


  devpriv->IntStatus |= ADC_READY;
  writew(devpriv->IntStatus,
         devpriv->io_addr + ICP_MULTI_INT_STAT);


  data[n] = 0;






  return -ETIME;

conv_finish:
  data[n] =
      (readw(devpriv->io_addr + ICP_MULTI_AI) >> 4) & 0x0fff;
 }


 devpriv->IntEnable &= ~ADC_READY;
 writew(devpriv->IntEnable, devpriv->io_addr + ICP_MULTI_INT_EN);


 devpriv->IntStatus |= ADC_READY;
 writew(devpriv->IntStatus, devpriv->io_addr + ICP_MULTI_INT_STAT);




 return n;
}
