
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct cx25840_state {int * ir_state; } ;
struct cx25840_ir_state {int rx_kfifo; } ;


 int ENODEV ;
 int cx25840_ir_rx_shutdown (struct v4l2_subdev*) ;
 int cx25840_ir_tx_shutdown (struct v4l2_subdev*) ;
 int kfifo_free (int ) ;
 int kfree (struct cx25840_ir_state*) ;
 struct cx25840_ir_state* to_ir_state (struct v4l2_subdev*) ;
 struct cx25840_state* to_state (struct v4l2_subdev*) ;

int cx25840_ir_remove(struct v4l2_subdev *sd)
{
 struct cx25840_state *state = to_state(sd);
 struct cx25840_ir_state *ir_state = to_ir_state(sd);

 if (ir_state == ((void*)0))
  return -ENODEV;

 cx25840_ir_rx_shutdown(sd);
 cx25840_ir_tx_shutdown(sd);

 kfifo_free(ir_state->rx_kfifo);
 kfree(ir_state);
 state->ir_state = ((void*)0);
 return 0;
}
