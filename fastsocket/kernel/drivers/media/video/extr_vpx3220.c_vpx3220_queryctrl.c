
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_queryctrl {int id; } ;


 int EINVAL ;




 int v4l2_ctrl_query_fill (struct v4l2_queryctrl*,int,int,int,int) ;

__attribute__((used)) static int vpx3220_queryctrl(struct v4l2_subdev *sd, struct v4l2_queryctrl *qc)
{
 switch (qc->id) {
 case 131:
  v4l2_ctrl_query_fill(qc, -128, 127, 1, 0);
  break;

 case 130:
  v4l2_ctrl_query_fill(qc, 0, 63, 1, 32);
  break;

 case 128:
  v4l2_ctrl_query_fill(qc, 0, 4095, 1, 2048);
  break;

 case 129:
  v4l2_ctrl_query_fill(qc, -512, 511, 1, 0);
  break;

 default:
  return -EINVAL;
 }
 return 0;
}
