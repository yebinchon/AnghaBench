
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_queryctrl {int id; } ;


 int EINVAL ;




 int v4l2_ctrl_query_fill (struct v4l2_queryctrl*,int,int,int,int) ;

__attribute__((used)) static int saa7110_queryctrl(struct v4l2_subdev *sd, struct v4l2_queryctrl *qc)
{
 switch (qc->id) {
 case 131:
  return v4l2_ctrl_query_fill(qc, 0, 255, 1, 128);
 case 130:
 case 128:
  return v4l2_ctrl_query_fill(qc, 0, 127, 1, 64);
 case 129:
  return v4l2_ctrl_query_fill(qc, -128, 127, 1, 0);
 default:
  return -EINVAL;
 }
 return 0;
}
