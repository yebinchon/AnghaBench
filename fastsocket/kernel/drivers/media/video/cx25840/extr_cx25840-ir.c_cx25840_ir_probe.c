
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_ir_parameters {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct cx25840_state {struct cx25840_ir_state* ir_state; int c; } ;
struct cx25840_ir_state {int tx_params_lock; int rx_params_lock; int c; int rx_kfifo; int rx_kfifo_lock; } ;


 int CX25840_IR_IRQEN_REG ;
 int CX25840_IR_RX_KFIFO_SIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQEN_MSK ;
 scalar_t__ IS_ERR (int ) ;
 int cx25840_write4 (int ,int ,int ) ;
 int default_rx_params ;
 int default_tx_params ;
 int ir ;
 scalar_t__ is_cx23885 (struct cx25840_state*) ;
 scalar_t__ is_cx23887 (struct cx25840_state*) ;
 int kfifo_alloc (int ,int ,int *) ;
 int kfree (struct cx25840_ir_state*) ;
 struct cx25840_ir_state* kzalloc (int,int ) ;
 int memcpy (struct v4l2_subdev_ir_parameters*,int *,int) ;
 int mutex_init (int *) ;
 int rx_s_parameters ;
 int spin_lock_init (int *) ;
 struct cx25840_state* to_state (struct v4l2_subdev*) ;
 int tx_s_parameters ;
 int v4l2_subdev_call (struct v4l2_subdev*,int ,int ,struct v4l2_subdev_ir_parameters*) ;

int cx25840_ir_probe(struct v4l2_subdev *sd)
{
 struct cx25840_state *state = to_state(sd);
 struct cx25840_ir_state *ir_state;
 struct v4l2_subdev_ir_parameters default_params;


 if (!(is_cx23885(state) || is_cx23887(state)))
  return 0;

 ir_state = kzalloc(sizeof(struct cx25840_ir_state), GFP_KERNEL);
 if (ir_state == ((void*)0))
  return -ENOMEM;

 spin_lock_init(&ir_state->rx_kfifo_lock);
 ir_state->rx_kfifo = kfifo_alloc(CX25840_IR_RX_KFIFO_SIZE, GFP_KERNEL,
          &ir_state->rx_kfifo_lock);
 if (IS_ERR(ir_state->rx_kfifo)) {
  kfree(ir_state);
  return -ENOMEM;
 }

 ir_state->c = state->c;
 state->ir_state = ir_state;


 if (is_cx23885(state) || is_cx23887(state))
  cx25840_write4(ir_state->c, CX25840_IR_IRQEN_REG, IRQEN_MSK);
 else
  cx25840_write4(ir_state->c, CX25840_IR_IRQEN_REG, 0);

 mutex_init(&ir_state->rx_params_lock);
 memcpy(&default_params, &default_rx_params,
         sizeof(struct v4l2_subdev_ir_parameters));
 v4l2_subdev_call(sd, ir, rx_s_parameters, &default_params);

 mutex_init(&ir_state->tx_params_lock);
 memcpy(&default_params, &default_tx_params,
         sizeof(struct v4l2_subdev_ir_parameters));
 v4l2_subdev_call(sd, ir, tx_s_parameters, &default_params);

 return 0;
}
