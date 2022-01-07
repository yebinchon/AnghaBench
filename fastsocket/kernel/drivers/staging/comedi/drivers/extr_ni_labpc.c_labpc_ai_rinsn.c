
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; int spinlock; } ;
struct TYPE_4__ {int command2_bits; int command3_bits; int command1_bits; int command6_bits; int command4_bits; int (* read_byte ) (scalar_t__) ;int (* write_byte ) (int,scalar_t__) ;} ;
struct TYPE_3__ {int* ai_range_code; scalar_t__ register_layout; scalar_t__* ai_range_is_unipolar; } ;


 int A1_INTR_EN_BIT ;
 int ADC_CHAN_BITS (int) ;
 int ADC_COMMON_BIT ;
 scalar_t__ ADC_CONVERT_REG ;
 int ADC_DIFF_BIT ;
 int ADC_FHF_INTR_EN_BIT ;
 scalar_t__ ADC_FIFO_REG ;
 int ADC_UNIP_BIT ;
 scalar_t__ AREF_DIFF ;
 scalar_t__ AREF_GROUND ;
 scalar_t__ COMMAND1_REG ;
 scalar_t__ COMMAND2_REG ;
 scalar_t__ COMMAND3_REG ;
 scalar_t__ COMMAND4_REG ;
 scalar_t__ COMMAND6_REG ;
 scalar_t__ COUNTER_A_CONTROL_REG ;
 scalar_t__ CR_AREF (int ) ;
 int CR_CHAN (int ) ;
 int CR_RANGE (int ) ;
 int DATA_AVAIL_BIT ;
 int ETIME ;
 int EXT_CONVERT_DISABLE_BIT ;
 int HWTRIG_BIT ;
 int INIT_A0_BITS ;
 int PRETRIG_BIT ;
 scalar_t__ STATUS1_REG ;
 int SWTRIG_BIT ;
 int comedi_error (struct comedi_device*,char*) ;
 TYPE_2__* devpriv ;
 scalar_t__ labpc_1200_layout ;
 int labpc_clear_adc_fifo (struct comedi_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int,scalar_t__) ;
 int stub10 (scalar_t__) ;
 int stub2 (int,scalar_t__) ;
 int stub3 (int,scalar_t__) ;
 int stub4 (int,scalar_t__) ;
 int stub5 (int,scalar_t__) ;
 int stub6 (int,scalar_t__) ;
 int stub7 (int,scalar_t__) ;
 int stub8 (scalar_t__) ;
 int stub9 (scalar_t__) ;
 TYPE_1__* thisboard ;
 int udelay (int) ;

__attribute__((used)) static int labpc_ai_rinsn(struct comedi_device *dev, struct comedi_subdevice *s,
     struct comedi_insn *insn, unsigned int *data)
{
 int i, n;
 int chan, range;
 int lsb, msb;
 int timeout = 1000;
 unsigned long flags;


 spin_lock_irqsave(&dev->spinlock, flags);
 devpriv->command2_bits &= ~SWTRIG_BIT & ~HWTRIG_BIT & ~PRETRIG_BIT;
 devpriv->write_byte(devpriv->command2_bits, dev->iobase + COMMAND2_REG);
 spin_unlock_irqrestore(&dev->spinlock, flags);


 devpriv->command3_bits = 0;
 devpriv->write_byte(devpriv->command3_bits, dev->iobase + COMMAND3_REG);


 devpriv->command1_bits = 0;
 chan = CR_CHAN(insn->chanspec);
 range = CR_RANGE(insn->chanspec);
 devpriv->command1_bits |= thisboard->ai_range_code[range];

 if (CR_AREF(insn->chanspec) == AREF_DIFF)
  chan *= 2;
 devpriv->command1_bits |= ADC_CHAN_BITS(chan);
 devpriv->write_byte(devpriv->command1_bits, dev->iobase + COMMAND1_REG);


 if (thisboard->register_layout == labpc_1200_layout) {

  if (CR_AREF(insn->chanspec) != AREF_GROUND)
   devpriv->command6_bits |= ADC_COMMON_BIT;
  else
   devpriv->command6_bits &= ~ADC_COMMON_BIT;

  if (thisboard->ai_range_is_unipolar[range])
   devpriv->command6_bits |= ADC_UNIP_BIT;
  else
   devpriv->command6_bits &= ~ADC_UNIP_BIT;

  devpriv->command6_bits &= ~ADC_FHF_INTR_EN_BIT;

  devpriv->command6_bits &= ~A1_INTR_EN_BIT;

  devpriv->write_byte(devpriv->command6_bits,
        dev->iobase + COMMAND6_REG);
 }

 devpriv->command4_bits = 0;
 devpriv->command4_bits |= EXT_CONVERT_DISABLE_BIT;

 if (CR_AREF(insn->chanspec) == AREF_DIFF)
  devpriv->command4_bits |= ADC_DIFF_BIT;
 devpriv->write_byte(devpriv->command4_bits, dev->iobase + COMMAND4_REG);


 devpriv->write_byte(INIT_A0_BITS, dev->iobase + COUNTER_A_CONTROL_REG);

 labpc_clear_adc_fifo(dev);

 for (n = 0; n < insn->n; n++) {

  devpriv->write_byte(0x1, dev->iobase + ADC_CONVERT_REG);

  for (i = 0; i < timeout; i++) {
   if (devpriv->read_byte(dev->iobase +
            STATUS1_REG) & DATA_AVAIL_BIT)
    break;
   udelay(1);
  }
  if (i == timeout) {
   comedi_error(dev, "timeout");
   return -ETIME;
  }
  lsb = devpriv->read_byte(dev->iobase + ADC_FIFO_REG);
  msb = devpriv->read_byte(dev->iobase + ADC_FIFO_REG);
  data[n] = (msb << 8) | lsb;
 }

 return n;
}
