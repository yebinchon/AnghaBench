
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_queryctrl {int id; } ;


 int ADV7343_BRIGHTNESS_DEF ;
 int ADV7343_BRIGHTNESS_MAX ;
 int ADV7343_BRIGHTNESS_MIN ;
 int ADV7343_GAIN_DEF ;
 int ADV7343_GAIN_MAX ;
 int ADV7343_GAIN_MIN ;
 int ADV7343_HUE_DEF ;
 int ADV7343_HUE_MAX ;
 int ADV7343_HUE_MIN ;



 int v4l2_ctrl_query_fill (struct v4l2_queryctrl*,int ,int ,int,int ) ;

__attribute__((used)) static int adv7343_queryctrl(struct v4l2_subdev *sd, struct v4l2_queryctrl *qc)
{
 switch (qc->id) {
 case 130:
  return v4l2_ctrl_query_fill(qc, ADV7343_BRIGHTNESS_MIN,
      ADV7343_BRIGHTNESS_MAX, 1,
      ADV7343_BRIGHTNESS_DEF);
 case 128:
  return v4l2_ctrl_query_fill(qc, ADV7343_HUE_MIN,
      ADV7343_HUE_MAX, 1 ,
      ADV7343_HUE_DEF);
 case 129:
  return v4l2_ctrl_query_fill(qc, ADV7343_GAIN_MIN,
      ADV7343_GAIN_MAX, 1,
      ADV7343_GAIN_DEF);
 default:
  break;
 }

 return 0;
}
