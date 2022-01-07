
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_io_pin_config {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct cx25840_state {int dummy; } ;


 int cx23885_s_io_pin_config (struct v4l2_subdev*,size_t,struct v4l2_subdev_io_pin_config*) ;
 scalar_t__ is_cx2388x (struct cx25840_state*) ;
 struct cx25840_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int common_s_io_pin_config(struct v4l2_subdev *sd, size_t n,
          struct v4l2_subdev_io_pin_config *pincfg)
{
 struct cx25840_state *state = to_state(sd);

 if (is_cx2388x(state))
  return cx23885_s_io_pin_config(sd, n, pincfg);
 return 0;
}
