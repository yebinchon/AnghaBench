
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_queryctrl {int id; } ;


 int EINVAL ;



 int v4l2_ctrl_query_fill (struct v4l2_queryctrl*,int ,int,int,int) ;

__attribute__((used)) static int tda9875_queryctrl(struct v4l2_subdev *sd, struct v4l2_queryctrl *qc)
{
 switch (qc->id) {
 case 128:
  return v4l2_ctrl_query_fill(qc, 0, 65535, 65535 / 100, 58880);
 case 130:
 case 129:
  return v4l2_ctrl_query_fill(qc, 0, 65535, 65535 / 100, 32768);
 }
 return -EINVAL;
}
