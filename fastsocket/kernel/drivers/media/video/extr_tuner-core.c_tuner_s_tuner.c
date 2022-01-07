
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {int audmode; int type; } ;
struct v4l2_subdev {int dummy; } ;
struct tuner {scalar_t__ mode; int audmode; } ;
struct i2c_client {int dummy; } ;


 int EINVAL ;
 scalar_t__ V4L2_TUNER_RADIO ;
 int set_mode_freq (struct i2c_client*,struct tuner*,int ,int ) ;
 struct tuner* to_tuner (struct v4l2_subdev*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int tuner_s_tuner(struct v4l2_subdev *sd, struct v4l2_tuner *vt)
{
 struct tuner *t = to_tuner(sd);
 struct i2c_client *client = v4l2_get_subdevdata(sd);

 if (set_mode_freq(client, t, vt->type, 0) == -EINVAL)
  return 0;

 if (t->mode == V4L2_TUNER_RADIO)
  t->audmode = vt->audmode;

 return 0;
}
