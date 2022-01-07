
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct comedi_cmd {scalar_t__ scan_begin_src; scalar_t__ stop_src; unsigned int chanlist_len; scalar_t__ convert_src; int convert_arg; int flags; int scan_end_arg; int scan_begin_arg; scalar_t__ start_src; int * chanlist; scalar_t__ stop_arg; } ;
struct comedi_async {int inttrig; struct comedi_cmd cmd; } ;
struct TYPE_2__ {int ai_continuous; scalar_t__ hwver; int adcg; unsigned short adccon; scalar_t__ iobase1; scalar_t__ ai_bipolar; scalar_t__ ai_scan_pos; scalar_t__ ai_scan_count; } ;


 scalar_t__ AREF_DIFF ;
 scalar_t__ CR_AREF (int ) ;
 unsigned int CR_CHAN (int ) ;
 unsigned int CR_RANGE (int ) ;
 int EBUSY ;
 unsigned char GAT_CONFIG (int,int ) ;
 int GAT_GND ;
 int GAT_VCC ;
 int I8254_MODE1 ;
 int I8254_MODE3 ;
 int OWNER_AICMD ;
 scalar_t__ PCI230_ADCCON ;
 scalar_t__ PCI230_ADCEN ;
 scalar_t__ PCI230_ADCG ;
 unsigned short PCI230_ADC_FIFO_EN ;
 unsigned short PCI230_ADC_FIFO_RESET ;
 unsigned short PCI230_ADC_IM_DIF ;
 unsigned short PCI230_ADC_IM_SE ;
 unsigned short PCI230_ADC_INT_FIFO_FULL ;
 unsigned short PCI230_ADC_IR_BIP ;
 unsigned short PCI230_ADC_IR_UNI ;
 unsigned short PCI230_ADC_TRIG_Z2CT2 ;
 scalar_t__ PCI230_Z2_CT_BASE ;
 scalar_t__ PCI230_ZGAT_SCE ;
 unsigned int RES_Z2CT0 ;
 unsigned int RES_Z2CT1 ;
 unsigned int RES_Z2CT2 ;
 scalar_t__ TRIG_COUNT ;
 scalar_t__ TRIG_FOLLOW ;
 scalar_t__ TRIG_INT ;
 int TRIG_ROUND_MASK ;
 int TRIG_ROUND_UP ;
 scalar_t__ TRIG_TIMER ;
 TYPE_1__* devpriv ;
 int get_resources (struct comedi_device*,unsigned int,int ) ;
 int i8254_set_mode (scalar_t__,int ,int,int ) ;
 int outb (unsigned char,scalar_t__) ;
 int outw (unsigned short,scalar_t__) ;
 scalar_t__* pci230_ai_bipolar ;
 unsigned int* pci230_ai_gain ;
 int pci230_ai_inttrig_start ;
 int pci230_ai_start (struct comedi_device*,struct comedi_subdevice*) ;
 int pci230_ct_setup_ns_mode (struct comedi_device*,int,int ,int,int) ;
 int udelay (int) ;

__attribute__((used)) static int pci230_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
{
 unsigned int i, chan, range, diff;
 unsigned int res_mask;
 unsigned short adccon, adcen;
 unsigned char zgat;


 struct comedi_async *async = s->async;
 struct comedi_cmd *cmd = &async->cmd;




 res_mask = 0;


 res_mask |= (1U << RES_Z2CT2);
 if (cmd->scan_begin_src != TRIG_FOLLOW) {

  res_mask |= (1U << RES_Z2CT0);
  if (cmd->scan_begin_src == TRIG_TIMER) {

   res_mask |= (1U << RES_Z2CT1);
  }
 }

 if (!get_resources(dev, res_mask, OWNER_AICMD)) {
  return -EBUSY;
 }


 if (cmd->stop_src == TRIG_COUNT) {
  devpriv->ai_scan_count = cmd->stop_arg;
  devpriv->ai_continuous = 0;
 } else {

  devpriv->ai_scan_count = 0;
  devpriv->ai_continuous = 1;
 }
 devpriv->ai_scan_pos = 0;
 adccon = PCI230_ADC_FIFO_EN;
 adcen = 0;

 if (CR_AREF(cmd->chanlist[0]) == AREF_DIFF) {

  diff = 1;
  adccon |= PCI230_ADC_IM_DIF;
 } else {

  diff = 0;
  adccon |= PCI230_ADC_IM_SE;
 }

 range = CR_RANGE(cmd->chanlist[0]);
 devpriv->ai_bipolar = pci230_ai_bipolar[range];
 if (devpriv->ai_bipolar) {
  adccon |= PCI230_ADC_IR_BIP;
 } else {
  adccon |= PCI230_ADC_IR_UNI;
 }
 for (i = 0; i < cmd->chanlist_len; i++) {
  unsigned int gainshift;

  chan = CR_CHAN(cmd->chanlist[i]);
  range = CR_RANGE(cmd->chanlist[i]);
  if (diff) {
   gainshift = 2 * chan;
   if (devpriv->hwver == 0) {


    adcen |= 3 << gainshift;
   } else {


    adcen |= 1 << gainshift;
   }
  } else {
   gainshift = (chan & ~1);
   adcen |= 1 << chan;
  }
  devpriv->adcg = (devpriv->adcg & ~(3 << gainshift))
      | (pci230_ai_gain[range] << gainshift);
 }


 outw(adcen, dev->iobase + PCI230_ADCEN);


 outw(devpriv->adcg, dev->iobase + PCI230_ADCG);



 i8254_set_mode(devpriv->iobase1 + PCI230_Z2_CT_BASE, 0, 2, I8254_MODE1);



 adccon |= PCI230_ADC_INT_FIFO_FULL | PCI230_ADC_TRIG_Z2CT2;






 devpriv->adccon = adccon;
 outw(adccon | PCI230_ADC_FIFO_RESET, dev->iobase + PCI230_ADCCON);
 udelay(25);


 outw(adccon | PCI230_ADC_FIFO_RESET, dev->iobase + PCI230_ADCCON);

 if (cmd->convert_src == TRIG_TIMER) {



  zgat = GAT_CONFIG(2, GAT_GND);
  outb(zgat, devpriv->iobase1 + PCI230_ZGAT_SCE);

  pci230_ct_setup_ns_mode(dev, 2, I8254_MODE3, cmd->convert_arg,
     cmd->flags & TRIG_ROUND_MASK);
  if (cmd->scan_begin_src != TRIG_FOLLOW) {
   zgat = GAT_CONFIG(0, GAT_VCC);
   outb(zgat, devpriv->iobase1 + PCI230_ZGAT_SCE);
   pci230_ct_setup_ns_mode(dev, 0, I8254_MODE1,
      ((uint64_t) cmd->convert_arg
       * cmd->scan_end_arg),
      TRIG_ROUND_UP);
   if (cmd->scan_begin_src == TRIG_TIMER) {






    zgat = GAT_CONFIG(1, GAT_GND);
    outb(zgat, devpriv->iobase1 + PCI230_ZGAT_SCE);
    pci230_ct_setup_ns_mode(dev, 1, I8254_MODE3,
       cmd->scan_begin_arg,
       cmd->
       flags &
       TRIG_ROUND_MASK);
   }
  }
 }

 if (cmd->start_src == TRIG_INT) {
  s->async->inttrig = pci230_ai_inttrig_start;
 } else {

  pci230_ai_start(dev, s);
 }

 return 0;
}
