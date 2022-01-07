
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;
struct cx23888_ir_state {struct cx23885_dev* dev; } ;
struct cx23885_dev {int dummy; } ;
typedef size_t ssize_t ;


 int IRQEN_TSE ;
 int irqenable_tx (struct cx23885_dev*,int ) ;
 struct cx23888_ir_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int cx23888_ir_tx_write(struct v4l2_subdev *sd, u8 *buf, size_t count,
          ssize_t *num)
{
 struct cx23888_ir_state *state = to_state(sd);
 struct cx23885_dev *dev = state->dev;

 irqenable_tx(dev, IRQEN_TSE);
 *num = count;
 return 0;
}
