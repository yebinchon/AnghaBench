
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_queryctrl {int id; int default_value; int maximum; int minimum; int name; } ;


 int EINVAL ;





 int debug ;
 int v4l2_ctrl_query_fill (struct v4l2_queryctrl*,int,int,int,int) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int ,int ,int ,int ) ;
 int v4l2_err (struct v4l2_subdev*,char*,int) ;

__attribute__((used)) static int
tvp514x_queryctrl(struct v4l2_subdev *sd, struct v4l2_queryctrl *qctrl)
{
 int err = -EINVAL;

 if (qctrl == ((void*)0))
  return err;

 switch (qctrl->id) {
 case 131:

  err = v4l2_ctrl_query_fill(qctrl, 0, 255, 1, 128);
  break;
 case 130:
 case 128:





  err = v4l2_ctrl_query_fill(qctrl, 0, 255, 1, 128);
  break;
 case 129:



  err = v4l2_ctrl_query_fill(qctrl, -180, 180, 180, 0);
  break;
 case 132:




  err = v4l2_ctrl_query_fill(qctrl, 0, 1, 1, 1);
  break;
 default:
  v4l2_err(sd, "invalid control id %d\n", qctrl->id);
  return err;
 }

 v4l2_dbg(1, debug, sd, "Query Control:%s: Min - %d, Max - %d, Def - %d",
   qctrl->name, qctrl->minimum, qctrl->maximum,
   qctrl->default_value);

 return err;
}
