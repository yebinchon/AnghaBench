
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_ir_parameters {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct cx23888_ir_state {int tx_params_lock; int tx_params; } ;


 int memcpy (struct v4l2_subdev_ir_parameters*,int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct cx23888_ir_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int cx23888_ir_tx_g_parameters(struct v4l2_subdev *sd,
          struct v4l2_subdev_ir_parameters *p)
{
 struct cx23888_ir_state *state = to_state(sd);
 mutex_lock(&state->tx_params_lock);
 memcpy(p, &state->tx_params, sizeof(struct v4l2_subdev_ir_parameters));
 mutex_unlock(&state->tx_params_lock);
 return 0;
}
