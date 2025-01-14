
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union cx23888_ir_fifo_rec {int dummy; } cx23888_ir_fifo_rec ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct v4l2_subdev_ir_parameters {scalar_t__ mode; int bytes_per_data_element; int enable; scalar_t__ interrupt_enable; int invert_level; int invert_carrier_sense; int resolution; scalar_t__ max_pulse_width; int duty_cycle; int carrier_freq; int modulation; scalar_t__ shutdown; } ;
struct v4l2_subdev {int dummy; } ;
struct cx23888_ir_state {int tx_params_lock; int txclk_divider; struct v4l2_subdev_ir_parameters tx_params; struct cx23885_dev* dev; } ;
struct cx23885_dev {int dummy; } ;


 int ENOSYS ;
 int FIFO_RXTX ;
 int IRQEN_TSE ;
 int TX_FIFO_HALF_EMPTY ;
 scalar_t__ V4L2_SUBDEV_IR_MODE_PULSE_WIDTH ;
 int atomic_set (int *,int ) ;
 int cduty_tx_s_duty_cycle (struct cx23885_dev*,int ) ;
 int clock_divider_to_resolution (int ) ;
 int control_tx_enable (struct cx23885_dev*,int) ;
 int control_tx_irq_watermark (struct cx23885_dev*,int ) ;
 int control_tx_level_invert (struct cx23885_dev*,int ) ;
 int control_tx_modulation_enable (struct cx23885_dev*,int ) ;
 int control_tx_polarity_invert (struct cx23885_dev*,int ) ;
 int cx23888_ir_tx_shutdown (struct v4l2_subdev*) ;
 int irqenable_tx (struct cx23885_dev*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ pulse_width_count_to_ns (int ,int ) ;
 struct cx23888_ir_state* to_state (struct v4l2_subdev*) ;
 int txclk_tx_s_carrier (struct cx23885_dev*,int ,int *) ;
 scalar_t__ txclk_tx_s_max_pulse_width (struct cx23885_dev*,scalar_t__,int *) ;

__attribute__((used)) static int cx23888_ir_tx_s_parameters(struct v4l2_subdev *sd,
          struct v4l2_subdev_ir_parameters *p)
{
 struct cx23888_ir_state *state = to_state(sd);
 struct cx23885_dev *dev = state->dev;
 struct v4l2_subdev_ir_parameters *o = &state->tx_params;
 u16 txclk_divider;

 if (p->shutdown)
  return cx23888_ir_tx_shutdown(sd);

 if (p->mode != V4L2_SUBDEV_IR_MODE_PULSE_WIDTH)
  return -ENOSYS;

 mutex_lock(&state->tx_params_lock);

 o->shutdown = p->shutdown;

 o->mode = p->mode = V4L2_SUBDEV_IR_MODE_PULSE_WIDTH;

 o->bytes_per_data_element = p->bytes_per_data_element
      = sizeof(union cx23888_ir_fifo_rec);


 irqenable_tx(dev, 0);
 control_tx_enable(dev, 0);

 control_tx_modulation_enable(dev, p->modulation);
 o->modulation = p->modulation;

 if (p->modulation) {
  p->carrier_freq = txclk_tx_s_carrier(dev, p->carrier_freq,
           &txclk_divider);
  o->carrier_freq = p->carrier_freq;

  p->duty_cycle = cduty_tx_s_duty_cycle(dev, p->duty_cycle);
  o->duty_cycle = p->duty_cycle;

  p->max_pulse_width =
   (u32) pulse_width_count_to_ns(FIFO_RXTX, txclk_divider);
 } else {
  p->max_pulse_width =
       txclk_tx_s_max_pulse_width(dev, p->max_pulse_width,
             &txclk_divider);
 }
 o->max_pulse_width = p->max_pulse_width;
 atomic_set(&state->txclk_divider, txclk_divider);

 p->resolution = clock_divider_to_resolution(txclk_divider);
 o->resolution = p->resolution;


 control_tx_irq_watermark(dev, TX_FIFO_HALF_EMPTY);

 control_tx_polarity_invert(dev, p->invert_carrier_sense);
 o->invert_carrier_sense = p->invert_carrier_sense;

 control_tx_level_invert(dev, p->invert_level);
 o->invert_level = p->invert_level;

 o->interrupt_enable = p->interrupt_enable;
 o->enable = p->enable;
 if (p->enable) {
  if (p->interrupt_enable)
   irqenable_tx(dev, IRQEN_TSE);
  control_tx_enable(dev, p->enable);
 }

 mutex_unlock(&state->tx_params_lock);
 return 0;
}
