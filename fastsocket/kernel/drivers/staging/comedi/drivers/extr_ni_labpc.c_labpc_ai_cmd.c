
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {int spinlock; scalar_t__ iobase; int irq; } ;
struct comedi_cmd {int stop_src; int stop_arg; int chanlist_len; int flags; scalar_t__ convert_src; scalar_t__ scan_begin_src; int start_src; int * chanlist; } ;
struct comedi_async {struct comedi_cmd cmd; } ;
typedef enum transfer_type { ____Placeholder_transfer_type } transfer_type ;
struct TYPE_4__ {int command2_bits; int command3_bits; int count; int current_transfer; int command6_bits; int command1_bits; int command4_bits; int divisor_b0; int divisor_a0; int divisor_b1; int dma_transfer_size; int (* write_byte ) (int,scalar_t__) ;scalar_t__ dma_chan; int dma_buffer; } ;
struct TYPE_3__ {scalar_t__ bustype; scalar_t__ register_layout; int* ai_range_code; scalar_t__* ai_range_is_unipolar; } ;


 int A1_INTR_EN_BIT ;
 int ADC_CHAN_BITS (int) ;
 int ADC_COMMON_BIT ;
 int ADC_DIFF_BIT ;
 int ADC_FHF_INTR_EN_BIT ;
 int ADC_FNE_INTR_EN_BIT ;
 int ADC_SCAN_EN_BIT ;
 int ADC_SCAN_UP_BIT ;
 int ADC_UNIP_BIT ;
 int AREF_DIFF ;
 int AREF_GROUND ;
 int CASCADE_BIT ;
 scalar_t__ COMMAND1_REG ;
 scalar_t__ COMMAND2_REG ;
 scalar_t__ COMMAND3_REG ;
 scalar_t__ COMMAND4_REG ;
 scalar_t__ COMMAND6_REG ;
 scalar_t__ COUNTER_A_BASE_REG ;
 scalar_t__ COUNTER_A_CONTROL_REG ;
 scalar_t__ COUNTER_B_BASE_REG ;
 int CR_AREF (int ) ;
 int CR_CHAN (int ) ;
 int CR_RANGE (int ) ;
 int DMATC_INTR_EN_BIT ;
 int DMA_EN_BIT ;
 int ERR_INTR_EN_BIT ;
 int EXT_CONVERT_DISABLE_BIT ;
 int EXT_SCAN_EN_BIT ;
 int HWTRIG_BIT ;
 int INIT_A0_BITS ;
 int INIT_A1_BITS ;
 scalar_t__ INTERVAL_COUNT_REG ;
 int INTERVAL_LOAD_BITS ;
 scalar_t__ INTERVAL_LOAD_REG ;
 int INTERVAL_SCAN_EN_BIT ;
 scalar_t__ MODE_MULT_CHAN_DOWN ;
 scalar_t__ MODE_MULT_CHAN_UP ;
 scalar_t__ MODE_SINGLE_CHAN ;
 int PRETRIG_BIT ;
 int SWTRIG_BIT ;




 int TRIG_RT ;
 scalar_t__ TRIG_TIMER ;
 int TRIG_WAKE_EOS ;
 unsigned long claim_dma_lock () ;
 int clear_dma_ff (scalar_t__) ;
 int comedi_error (struct comedi_device*,char*) ;
 TYPE_2__* devpriv ;
 int disable_dma (scalar_t__) ;
 int enable_dma (scalar_t__) ;
 int fifo_half_full_transfer ;
 int fifo_not_empty_transfer ;
 scalar_t__ isa_bustype ;
 int isa_dma_transfer ;
 scalar_t__ labpc_1200_layout ;
 int labpc_adc_timing (struct comedi_device*,struct comedi_cmd*) ;
 scalar_t__ labpc_ai_convert_period (struct comedi_cmd*) ;
 scalar_t__ labpc_ai_scan_mode (struct comedi_cmd*) ;
 scalar_t__ labpc_ai_scan_period (struct comedi_cmd*) ;
 int labpc_clear_adc_fifo (struct comedi_device*) ;
 int labpc_counter_load (struct comedi_device*,scalar_t__,int,int,int) ;
 int labpc_suggest_transfer_size (struct comedi_cmd) ;
 scalar_t__ labpc_use_continuous_mode (struct comedi_cmd*) ;
 int release_dma_lock (unsigned long) ;
 int sample_size ;
 int set_dma_addr (scalar_t__,int ) ;
 int set_dma_count (scalar_t__,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int,scalar_t__) ;
 int stub10 (int,scalar_t__) ;
 int stub11 (int,scalar_t__) ;
 int stub12 (int,scalar_t__) ;
 int stub2 (int,scalar_t__) ;
 int stub3 (int,scalar_t__) ;
 int stub4 (int,scalar_t__) ;
 int stub5 (int,scalar_t__) ;
 int stub6 (int,scalar_t__) ;
 int stub7 (int,scalar_t__) ;
 int stub8 (int,scalar_t__) ;
 int stub9 (int,scalar_t__) ;
 TYPE_1__* thisboard ;
 int udelay (int) ;
 int virt_to_bus (int ) ;

__attribute__((used)) static int labpc_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
{
 int channel, range, aref;
 unsigned long irq_flags;
 int ret;
 struct comedi_async *async = s->async;
 struct comedi_cmd *cmd = &async->cmd;
 enum transfer_type xfer;
 unsigned long flags;

 if (!dev->irq) {
  comedi_error(dev, "no irq assigned, cannot perform command");
  return -1;
 }

 range = CR_RANGE(cmd->chanlist[0]);
 aref = CR_AREF(cmd->chanlist[0]);


 spin_lock_irqsave(&dev->spinlock, flags);
 devpriv->command2_bits &= ~SWTRIG_BIT & ~HWTRIG_BIT & ~PRETRIG_BIT;
 devpriv->write_byte(devpriv->command2_bits, dev->iobase + COMMAND2_REG);
 spin_unlock_irqrestore(&dev->spinlock, flags);

 devpriv->command3_bits = 0;
 devpriv->write_byte(devpriv->command3_bits, dev->iobase + COMMAND3_REG);


 if (cmd->stop_src == 131) {
  devpriv->count = cmd->stop_arg * cmd->chanlist_len;
 }

 if (cmd->stop_src == 130) {

  ret = labpc_counter_load(dev, dev->iobase + COUNTER_A_BASE_REG,
      1, 3, 0);
  if (ret < 0) {
   comedi_error(dev, "error loading counter a1");
   return -1;
  }
 } else
  devpriv->write_byte(INIT_A1_BITS,
        dev->iobase + COUNTER_A_CONTROL_REG);


 if (devpriv->dma_chan &&

     (cmd->flags & (TRIG_WAKE_EOS | TRIG_RT)) == 0 &&

     thisboard->bustype == isa_bustype) {
  xfer = isa_dma_transfer;
 } else if (thisboard->register_layout == labpc_1200_layout &&

     (cmd->flags & TRIG_WAKE_EOS) == 0 &&

     (cmd->stop_src != 131 || devpriv->count > 256)) {
  xfer = fifo_half_full_transfer;
 } else
  xfer = fifo_not_empty_transfer;
 devpriv->current_transfer = xfer;


 if (thisboard->register_layout == labpc_1200_layout) {

  if (aref != AREF_GROUND)
   devpriv->command6_bits |= ADC_COMMON_BIT;
  else
   devpriv->command6_bits &= ~ADC_COMMON_BIT;

  if (thisboard->ai_range_is_unipolar[range])
   devpriv->command6_bits |= ADC_UNIP_BIT;
  else
   devpriv->command6_bits &= ~ADC_UNIP_BIT;

  if (xfer == fifo_half_full_transfer)
   devpriv->command6_bits |= ADC_FHF_INTR_EN_BIT;
  else
   devpriv->command6_bits &= ~ADC_FHF_INTR_EN_BIT;

  if (cmd->stop_src == 130)
   devpriv->command6_bits |= A1_INTR_EN_BIT;
  else
   devpriv->command6_bits &= ~A1_INTR_EN_BIT;

  if (labpc_ai_scan_mode(cmd) == MODE_MULT_CHAN_UP)
   devpriv->command6_bits |= ADC_SCAN_UP_BIT;
  else
   devpriv->command6_bits &= ~ADC_SCAN_UP_BIT;

  devpriv->write_byte(devpriv->command6_bits,
        dev->iobase + COMMAND6_REG);
 }


 devpriv->command1_bits = 0;
 if (labpc_ai_scan_mode(cmd) == MODE_MULT_CHAN_UP)
  channel = CR_CHAN(cmd->chanlist[cmd->chanlist_len - 1]);
 else
  channel = CR_CHAN(cmd->chanlist[0]);

 if (labpc_ai_scan_mode(cmd) != MODE_SINGLE_CHAN && aref == AREF_DIFF)
  channel *= 2;
 devpriv->command1_bits |= ADC_CHAN_BITS(channel);
 devpriv->command1_bits |= thisboard->ai_range_code[range];
 devpriv->write_byte(devpriv->command1_bits, dev->iobase + COMMAND1_REG);

 if (labpc_ai_scan_mode(cmd) == MODE_MULT_CHAN_UP ||
     labpc_ai_scan_mode(cmd) == MODE_MULT_CHAN_DOWN) {
  devpriv->command1_bits |= ADC_SCAN_EN_BIT;


  udelay(1);
  devpriv->write_byte(devpriv->command1_bits,
        dev->iobase + COMMAND1_REG);
 }

 devpriv->command4_bits = 0;
 if (cmd->convert_src != 130)
  devpriv->command4_bits |= EXT_CONVERT_DISABLE_BIT;


 if (labpc_use_continuous_mode(cmd) == 0) {
  devpriv->command4_bits |= INTERVAL_SCAN_EN_BIT;
  if (cmd->scan_begin_src == 130)
   devpriv->command4_bits |= EXT_SCAN_EN_BIT;
 }

 if (aref == AREF_DIFF)
  devpriv->command4_bits |= ADC_DIFF_BIT;
 devpriv->write_byte(devpriv->command4_bits, dev->iobase + COMMAND4_REG);

 devpriv->write_byte(cmd->chanlist_len,
       dev->iobase + INTERVAL_COUNT_REG);

 devpriv->write_byte(INTERVAL_LOAD_BITS,
       dev->iobase + INTERVAL_LOAD_REG);

 if (cmd->convert_src == TRIG_TIMER || cmd->scan_begin_src == TRIG_TIMER) {

  labpc_adc_timing(dev, cmd);

  ret = labpc_counter_load(dev, dev->iobase + COUNTER_B_BASE_REG,
      0, devpriv->divisor_b0, 3);
  if (ret < 0) {
   comedi_error(dev, "error loading counter b0");
   return -1;
  }
 }

 if (labpc_ai_convert_period(cmd)) {

  ret = labpc_counter_load(dev, dev->iobase + COUNTER_A_BASE_REG,
      0, devpriv->divisor_a0, 2);
  if (ret < 0) {
   comedi_error(dev, "error loading counter a0");
   return -1;
  }
 } else
  devpriv->write_byte(INIT_A0_BITS,
        dev->iobase + COUNTER_A_CONTROL_REG);


 if (labpc_ai_scan_period(cmd)) {

  ret = labpc_counter_load(dev, dev->iobase + COUNTER_B_BASE_REG,
      1, devpriv->divisor_b1, 2);
  if (ret < 0) {
   comedi_error(dev, "error loading counter b1");
   return -1;
  }
 }

 labpc_clear_adc_fifo(dev);


 if (xfer == isa_dma_transfer) {
  irq_flags = claim_dma_lock();
  disable_dma(devpriv->dma_chan);


  clear_dma_ff(devpriv->dma_chan);
  set_dma_addr(devpriv->dma_chan,
        virt_to_bus(devpriv->dma_buffer));

  devpriv->dma_transfer_size = labpc_suggest_transfer_size(*cmd);
  if (cmd->stop_src == 131 &&
      devpriv->count * sample_size < devpriv->dma_transfer_size) {
   devpriv->dma_transfer_size =
       devpriv->count * sample_size;
  }
  set_dma_count(devpriv->dma_chan, devpriv->dma_transfer_size);
  enable_dma(devpriv->dma_chan);
  release_dma_lock(irq_flags);

  devpriv->command3_bits |= DMA_EN_BIT | DMATC_INTR_EN_BIT;
 } else
  devpriv->command3_bits &= ~DMA_EN_BIT & ~DMATC_INTR_EN_BIT;


 devpriv->command3_bits |= ERR_INTR_EN_BIT;

 if (xfer == fifo_not_empty_transfer)
  devpriv->command3_bits |= ADC_FNE_INTR_EN_BIT;
 else
  devpriv->command3_bits &= ~ADC_FNE_INTR_EN_BIT;
 devpriv->write_byte(devpriv->command3_bits, dev->iobase + COMMAND3_REG);





 spin_lock_irqsave(&dev->spinlock, flags);
 devpriv->command2_bits |= CASCADE_BIT;
 switch (cmd->start_src) {
 case 130:
  devpriv->command2_bits |= HWTRIG_BIT;
  devpriv->command2_bits &= ~PRETRIG_BIT & ~SWTRIG_BIT;
  break;
 case 128:
  devpriv->command2_bits |= SWTRIG_BIT;
  devpriv->command2_bits &= ~PRETRIG_BIT & ~HWTRIG_BIT;
  break;
 default:
  comedi_error(dev, "bug with start_src");
  return -1;
  break;
 }
 switch (cmd->stop_src) {
 case 130:
  devpriv->command2_bits |= HWTRIG_BIT | PRETRIG_BIT;
  break;
 case 131:
 case 129:
  break;
 default:
  comedi_error(dev, "bug with stop_src");
  return -1;
 }
 devpriv->write_byte(devpriv->command2_bits, dev->iobase + COMMAND2_REG);
 spin_unlock_irqrestore(&dev->spinlock, flags);

 return 0;
}
