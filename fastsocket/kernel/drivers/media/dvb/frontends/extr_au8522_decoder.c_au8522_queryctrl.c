
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_queryctrl {int id; scalar_t__ type; } ;


 int AU8522_TVDEC_CONTRAST_REG00BH_CVBS ;
 int EINVAL ;




 int v4l2_ctrl_query_fill (struct v4l2_queryctrl*,int,int,int,int) ;

__attribute__((used)) static int au8522_queryctrl(struct v4l2_subdev *sd, struct v4l2_queryctrl *qc)
{
 switch (qc->id) {
 case 130:
  return v4l2_ctrl_query_fill(qc, 0, 255, 1,
         AU8522_TVDEC_CONTRAST_REG00BH_CVBS);
 case 131:
  return v4l2_ctrl_query_fill(qc, 0, 255, 1, 109);
 case 128:
  return v4l2_ctrl_query_fill(qc, 0, 255, 1, 128);
 case 129:
  return v4l2_ctrl_query_fill(qc, -32768, 32768, 1, 0);
 default:
  break;
 }

 qc->type = 0;
 return -EINVAL;
}
