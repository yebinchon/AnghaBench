
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct TYPE_2__ {int shutdown; } ;
struct cx23888_ir_state {int tx_params_lock; TYPE_1__ tx_params; struct cx23885_dev* dev; } ;
struct cx23885_dev {int dummy; } ;


 int CX23888_IR_TXCLK_REG ;
 int TXCLK_TCD ;
 int control_tx_enable (struct cx23885_dev*,int) ;
 int control_tx_modulation_enable (struct cx23885_dev*,int) ;
 int cx23888_ir_write4 (struct cx23885_dev*,int ,int ) ;
 int irqenable_tx (struct cx23885_dev*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct cx23888_ir_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int cx23888_ir_tx_shutdown(struct v4l2_subdev *sd)
{
 struct cx23888_ir_state *state = to_state(sd);
 struct cx23885_dev *dev = state->dev;

 mutex_lock(&state->tx_params_lock);


 irqenable_tx(dev, 0);
 control_tx_enable(dev, 0);
 control_tx_modulation_enable(dev, 0);
 cx23888_ir_write4(dev, CX23888_IR_TXCLK_REG, TXCLK_TCD);

 state->tx_params.shutdown = 1;

 mutex_unlock(&state->tx_params_lock);
 return 0;
}
