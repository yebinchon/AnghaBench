
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_ir_parameters {int dummy; } ;
struct v4l2_subdev {int grp_id; int name; } ;
struct cx23888_ir_state {int rx_kfifo; int tx_params_lock; int rx_params_lock; struct v4l2_subdev sd; scalar_t__ rev; int id; struct cx23885_dev* dev; int rx_kfifo_lock; } ;
struct cx23885_dev {char* name; int v4l2_dev; } ;


 int CX23885_HW_888_IR ;
 int CX23888_IR_IRQEN_REG ;
 int CX23888_IR_RX_KFIFO_SIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IS_ERR (int ) ;
 int V4L2_IDENT_CX23888_IR ;
 int cx23888_ir_controller_ops ;
 int cx23888_ir_write4 (struct cx23885_dev*,int ,int ) ;
 int default_rx_params ;
 int default_tx_params ;
 int ir ;
 int kfifo_alloc (int ,int ,int *) ;
 int kfifo_free (int ) ;
 struct cx23888_ir_state* kzalloc (int,int ) ;
 int memcpy (struct v4l2_subdev_ir_parameters*,int *,int) ;
 int mutex_init (int *) ;
 int rx_s_parameters ;
 int snprintf (int ,int,char*,char*) ;
 int spin_lock_init (int *) ;
 int tx_s_parameters ;
 int v4l2_device_register_subdev (int *,struct v4l2_subdev*) ;
 int v4l2_set_subdevdata (struct v4l2_subdev*,struct cx23888_ir_state*) ;
 int v4l2_subdev_call (struct v4l2_subdev*,int ,int ,struct v4l2_subdev_ir_parameters*) ;
 int v4l2_subdev_init (struct v4l2_subdev*,int *) ;

int cx23888_ir_probe(struct cx23885_dev *dev)
{
 struct cx23888_ir_state *state;
 struct v4l2_subdev *sd;
 struct v4l2_subdev_ir_parameters default_params;
 int ret;

 state = kzalloc(sizeof(struct cx23888_ir_state), GFP_KERNEL);
 if (state == ((void*)0))
  return -ENOMEM;

 spin_lock_init(&state->rx_kfifo_lock);
 state->rx_kfifo = kfifo_alloc(CX23888_IR_RX_KFIFO_SIZE, GFP_KERNEL,
          &state->rx_kfifo_lock);
 if (IS_ERR(state->rx_kfifo))
  return IS_ERR(state->rx_kfifo);

 state->dev = dev;
 state->id = V4L2_IDENT_CX23888_IR;
 state->rev = 0;
 sd = &state->sd;

 v4l2_subdev_init(sd, &cx23888_ir_controller_ops);
 v4l2_set_subdevdata(sd, state);

 snprintf(sd->name, sizeof(sd->name), "%s/888-ir", dev->name);
 sd->grp_id = CX23885_HW_888_IR;

 ret = v4l2_device_register_subdev(&dev->v4l2_dev, sd);
 if (ret == 0) {





  cx23888_ir_write4(dev, CX23888_IR_IRQEN_REG, 0);

  mutex_init(&state->rx_params_lock);
  memcpy(&default_params, &default_rx_params,
         sizeof(struct v4l2_subdev_ir_parameters));
  v4l2_subdev_call(sd, ir, rx_s_parameters, &default_params);

  mutex_init(&state->tx_params_lock);
  memcpy(&default_params, &default_tx_params,
         sizeof(struct v4l2_subdev_ir_parameters));
  v4l2_subdev_call(sd, ir, tx_s_parameters, &default_params);
 } else {
  kfifo_free(state->rx_kfifo);
 }
 return ret;
}
