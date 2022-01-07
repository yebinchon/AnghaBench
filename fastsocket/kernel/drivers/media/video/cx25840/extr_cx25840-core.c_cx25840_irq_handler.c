
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev {int dummy; } ;
struct cx25840_state {int dummy; } ;


 int ENODEV ;
 int cx23885_irq_handler (struct v4l2_subdev*,int ,int*) ;
 scalar_t__ is_cx2388x (struct cx25840_state*) ;
 struct cx25840_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int cx25840_irq_handler(struct v4l2_subdev *sd, u32 status,
          bool *handled)
{
 struct cx25840_state *state = to_state(sd);

 *handled = 0;


 if (is_cx2388x(state))
  return cx23885_irq_handler(sd, status, handled);

 return -ENODEV;
}
