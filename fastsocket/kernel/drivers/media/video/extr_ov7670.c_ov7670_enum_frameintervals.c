
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct TYPE_2__ {int numerator; int denominator; } ;
struct v4l2_frmivalenum {size_t index; TYPE_1__ discrete; int type; } ;


 size_t ARRAY_SIZE (int *) ;
 int EINVAL ;
 int V4L2_FRMIVAL_TYPE_DISCRETE ;
 int * ov7670_frame_rates ;

__attribute__((used)) static int ov7670_enum_frameintervals(struct v4l2_subdev *sd,
  struct v4l2_frmivalenum *interval)
{
 if (interval->index >= ARRAY_SIZE(ov7670_frame_rates))
  return -EINVAL;
 interval->type = V4L2_FRMIVAL_TYPE_DISCRETE;
 interval->discrete.numerator = 1;
 interval->discrete.denominator = ov7670_frame_rates[interval->index];
 return 0;
}
