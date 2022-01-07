
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union cx23888_ir_fifo_rec {int dummy; } cx23888_ir_fifo_rec ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct v4l2_subdev_ir_parameters {scalar_t__ mode; int bytes_per_data_element; int duty_cycle; int enable; scalar_t__ interrupt_enable; int invert_level; int resolution; int noise_filter_min_width; scalar_t__ max_pulse_width; int carrier_range_upper; int carrier_range_lower; int carrier_freq; int modulation; scalar_t__ shutdown; } ;
struct v4l2_subdev {int dummy; } ;
struct cx23888_ir_state {int rx_params_lock; int rx_kfifo; int rx_invert; int rxclk_divider; struct v4l2_subdev_ir_parameters rx_params; struct cx23885_dev* dev; } ;
struct cx23885_dev {int dummy; } ;


 int CNTRL_EDG_BOTH ;
 int ENOSYS ;
 int FIFO_RXTX ;
 int IRQEN_ROE ;
 int IRQEN_RSE ;
 int IRQEN_RTE ;
 int RX_FIFO_HALF_FULL ;
 scalar_t__ V4L2_SUBDEV_IR_MODE_PULSE_WIDTH ;
 int atomic_set (int *,int ) ;
 int clock_divider_to_resolution (int ) ;
 int control_rx_demodulation_enable (struct cx23885_dev*,int ) ;
 int control_rx_enable (struct cx23885_dev*,int) ;
 int control_rx_irq_watermark (struct cx23885_dev*,int ) ;
 int control_rx_s_carrier_window (struct cx23885_dev*,int ,int *,int *) ;
 int control_rx_s_edge_detection (struct cx23885_dev*,int ) ;
 int cx23888_ir_rx_shutdown (struct v4l2_subdev*) ;
 int filter_rx_s_min_width (struct cx23885_dev*,int ) ;
 int irqenable_rx (struct cx23885_dev*,int) ;
 int kfifo_reset (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ pulse_width_count_to_ns (int ,int ) ;
 int rxclk_rx_s_carrier (struct cx23885_dev*,int ,int *) ;
 scalar_t__ rxclk_rx_s_max_pulse_width (struct cx23885_dev*,scalar_t__,int *) ;
 struct cx23888_ir_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int cx23888_ir_rx_s_parameters(struct v4l2_subdev *sd,
          struct v4l2_subdev_ir_parameters *p)
{
 struct cx23888_ir_state *state = to_state(sd);
 struct cx23885_dev *dev = state->dev;
 struct v4l2_subdev_ir_parameters *o = &state->rx_params;
 u16 rxclk_divider;

 if (p->shutdown)
  return cx23888_ir_rx_shutdown(sd);

 if (p->mode != V4L2_SUBDEV_IR_MODE_PULSE_WIDTH)
  return -ENOSYS;

 mutex_lock(&state->rx_params_lock);

 o->shutdown = p->shutdown;

 o->mode = p->mode = V4L2_SUBDEV_IR_MODE_PULSE_WIDTH;

 o->bytes_per_data_element = p->bytes_per_data_element
      = sizeof(union cx23888_ir_fifo_rec);


 irqenable_rx(dev, 0);
 control_rx_enable(dev, 0);

 control_rx_demodulation_enable(dev, p->modulation);
 o->modulation = p->modulation;

 if (p->modulation) {
  p->carrier_freq = rxclk_rx_s_carrier(dev, p->carrier_freq,
           &rxclk_divider);

  o->carrier_freq = p->carrier_freq;

  o->duty_cycle = p->duty_cycle = 50;

  control_rx_s_carrier_window(dev, p->carrier_freq,
         &p->carrier_range_lower,
         &p->carrier_range_upper);
  o->carrier_range_lower = p->carrier_range_lower;
  o->carrier_range_upper = p->carrier_range_upper;

  p->max_pulse_width =
   (u32) pulse_width_count_to_ns(FIFO_RXTX, rxclk_divider);
 } else {
  p->max_pulse_width =
       rxclk_rx_s_max_pulse_width(dev, p->max_pulse_width,
             &rxclk_divider);
 }
 o->max_pulse_width = p->max_pulse_width;
 atomic_set(&state->rxclk_divider, rxclk_divider);

 p->noise_filter_min_width =
     filter_rx_s_min_width(dev, p->noise_filter_min_width);
 o->noise_filter_min_width = p->noise_filter_min_width;

 p->resolution = clock_divider_to_resolution(rxclk_divider);
 o->resolution = p->resolution;


 control_rx_irq_watermark(dev, RX_FIFO_HALF_FULL);

 control_rx_s_edge_detection(dev, CNTRL_EDG_BOTH);

 o->invert_level = p->invert_level;
 atomic_set(&state->rx_invert, p->invert_level);

 o->interrupt_enable = p->interrupt_enable;
 o->enable = p->enable;
 if (p->enable) {
  kfifo_reset(state->rx_kfifo);
  if (p->interrupt_enable)
   irqenable_rx(dev, IRQEN_RSE | IRQEN_RTE | IRQEN_ROE);
  control_rx_enable(dev, p->enable);
 }

 mutex_unlock(&state->rx_params_lock);
 return 0;
}
