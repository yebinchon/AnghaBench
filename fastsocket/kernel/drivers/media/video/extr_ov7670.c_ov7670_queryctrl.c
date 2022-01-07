
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_queryctrl {int id; } ;


 int EINVAL ;
 int v4l2_ctrl_query_fill (struct v4l2_queryctrl*,int,int,int,int) ;

__attribute__((used)) static int ov7670_queryctrl(struct v4l2_subdev *sd,
  struct v4l2_queryctrl *qc)
{

 switch (qc->id) {
 case 136:
  return v4l2_ctrl_query_fill(qc, 0, 255, 1, 128);
 case 135:
  return v4l2_ctrl_query_fill(qc, 0, 127, 1, 64);
 case 128:
 case 131:
  return v4l2_ctrl_query_fill(qc, 0, 1, 1, 0);
 case 129:
  return v4l2_ctrl_query_fill(qc, 0, 256, 1, 128);
 case 130:
  return v4l2_ctrl_query_fill(qc, -180, 180, 5, 0);
 case 132:
  return v4l2_ctrl_query_fill(qc, 0, 255, 1, 128);
 case 137:
  return v4l2_ctrl_query_fill(qc, 0, 1, 1, 1);
 case 134:
  return v4l2_ctrl_query_fill(qc, 0, 65535, 1, 500);
 case 133:
  return v4l2_ctrl_query_fill(qc, 0, 1, 1, 0);
 }
 return -EINVAL;
}
