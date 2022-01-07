
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct cx23888_ir_state {int rx_kfifo; } ;
struct cx23885_dev {int dummy; } ;


 int CX23885_HW_888_IR ;
 int ENODEV ;
 struct v4l2_subdev* cx23885_find_hw (struct cx23885_dev*,int ) ;
 int cx23888_ir_rx_shutdown (struct v4l2_subdev*) ;
 int cx23888_ir_tx_shutdown (struct v4l2_subdev*) ;
 int kfifo_free (int ) ;
 int kfree (struct cx23888_ir_state*) ;
 struct cx23888_ir_state* to_state (struct v4l2_subdev*) ;
 int v4l2_device_unregister_subdev (struct v4l2_subdev*) ;

int cx23888_ir_remove(struct cx23885_dev *dev)
{
 struct v4l2_subdev *sd;
 struct cx23888_ir_state *state;

 sd = cx23885_find_hw(dev, CX23885_HW_888_IR);
 if (sd == ((void*)0))
  return -ENODEV;

 cx23888_ir_rx_shutdown(sd);
 cx23888_ir_tx_shutdown(sd);

 state = to_state(sd);
 v4l2_device_unregister_subdev(sd);
 kfifo_free(state->rx_kfifo);
 kfree(state);

 return 0;
}
