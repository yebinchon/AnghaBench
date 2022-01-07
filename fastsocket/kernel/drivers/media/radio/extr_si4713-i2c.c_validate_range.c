
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_queryctrl {scalar_t__ minimum; scalar_t__ maximum; int id; } ;
struct v4l2_ext_control {scalar_t__ value; int id; } ;


 int ERANGE ;
 int si4713_queryctrl (struct v4l2_subdev*,struct v4l2_queryctrl*) ;

__attribute__((used)) static int validate_range(struct v4l2_subdev *sd,
     struct v4l2_ext_control *control)
{
 struct v4l2_queryctrl vqc;
 int rval;

 vqc.id = control->id;
 rval = si4713_queryctrl(sd, &vqc);
 if (rval < 0)
  goto exit;

 if (control->value < vqc.minimum || control->value > vqc.maximum)
  rval = -ERANGE;

exit:
 return rval;
}
