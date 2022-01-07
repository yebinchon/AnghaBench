
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_ext_controls {int dummy; } ;


 int saa6752hs_do_ext_ctrls (struct v4l2_subdev*,struct v4l2_ext_controls*,int ) ;

__attribute__((used)) static int saa6752hs_try_ext_ctrls(struct v4l2_subdev *sd, struct v4l2_ext_controls *ctrls)
{
 return saa6752hs_do_ext_ctrls(sd, ctrls, 0);
}
