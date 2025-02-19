
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct ene_device {int rx_period_adjust; int hw_lock; int rdev; int w_pointer; int r_pointer; int hw_extra_buffer; scalar_t__ rx_fan_input_inuse; scalar_t__ hw_learning_and_tx_capable; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int pulse; int duration; } ;


 int DEFINE_IR_RAW_EVENT (TYPE_1__) ;
 int ENE_FW_PACKET_SIZE ;
 int ENE_FW_SAMPLE_BUFFER ;
 int ENE_FW_SAMPLE_PERIOD_FAN ;
 int ENE_FW_SAMPLE_SPACE ;
 int ENE_FW_SMPL_BUF_FAN ;
 int ENE_FW_SMPL_BUF_FAN_MSK ;
 int ENE_FW_SMPL_BUF_FAN_PLS ;
 int ENE_IRQ_RX ;
 int ENE_IRQ_TX ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int US_TO_NS (int) ;
 int dbg (char*,...) ;
 int dbg_verbose (char*,...) ;
 int ene_irq_status (struct ene_device*) ;
 int ene_read_reg (struct ene_device*,int) ;
 int ene_rx_get_sample_reg (struct ene_device*) ;
 int ene_rx_read_hw_pointer (struct ene_device*) ;
 int ene_rx_sense_carrier (struct ene_device*) ;
 int ene_tx_sample (struct ene_device*) ;
 TYPE_1__ ev ;
 int ir_raw_event_handle (int ) ;
 int ir_raw_event_store_with_filter (int ,TYPE_1__*) ;
 int sample_period ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t ene_isr(int irq, void *data)
{
 u16 hw_value, reg;
 int hw_sample, irq_status;
 bool pulse;
 unsigned long flags;
 irqreturn_t retval = IRQ_NONE;
 struct ene_device *dev = (struct ene_device *)data;
 DEFINE_IR_RAW_EVENT(ev);

 spin_lock_irqsave(&dev->hw_lock, flags);

 dbg_verbose("ISR called");
 ene_rx_read_hw_pointer(dev);
 irq_status = ene_irq_status(dev);

 if (!irq_status)
  goto unlock;

 retval = IRQ_HANDLED;

 if (irq_status & ENE_IRQ_TX) {
  dbg_verbose("TX interrupt");
  if (!dev->hw_learning_and_tx_capable) {
   dbg("TX interrupt on unsupported device!");
   goto unlock;
  }
  ene_tx_sample(dev);
 }

 if (!(irq_status & ENE_IRQ_RX))
  goto unlock;

 dbg_verbose("RX interrupt");

 if (dev->hw_learning_and_tx_capable)
  ene_rx_sense_carrier(dev);



 if (!dev->hw_extra_buffer)
  dev->r_pointer = dev->w_pointer == 0 ? ENE_FW_PACKET_SIZE : 0;

 while (1) {

  reg = ene_rx_get_sample_reg(dev);

  dbg_verbose("next sample to read at: %04x", reg);
  if (!reg)
   break;

  hw_value = ene_read_reg(dev, reg);

  if (dev->rx_fan_input_inuse) {

   int offset = ENE_FW_SMPL_BUF_FAN - ENE_FW_SAMPLE_BUFFER;


   hw_value |= ene_read_reg(dev, reg + offset) << 8;
   pulse = hw_value & ENE_FW_SMPL_BUF_FAN_PLS;


   hw_value &= ENE_FW_SMPL_BUF_FAN_MSK;
   hw_sample = hw_value * ENE_FW_SAMPLE_PERIOD_FAN;

  } else {
   pulse = !(hw_value & ENE_FW_SAMPLE_SPACE);
   hw_value &= ~ENE_FW_SAMPLE_SPACE;
   hw_sample = hw_value * sample_period;

   if (dev->rx_period_adjust) {
    hw_sample *= 100;
    hw_sample /= (100 + dev->rx_period_adjust);
   }
  }

  if (!dev->hw_extra_buffer && !hw_sample) {
   dev->r_pointer = dev->w_pointer;
   continue;
  }

  dbg("RX: %d (%s)", hw_sample, pulse ? "pulse" : "space");

  ev.duration = US_TO_NS(hw_sample);
  ev.pulse = pulse;
  ir_raw_event_store_with_filter(dev->rdev, &ev);
 }

 ir_raw_event_handle(dev->rdev);
unlock:
 spin_unlock_irqrestore(&dev->hw_lock, flags);
 return retval;
}
