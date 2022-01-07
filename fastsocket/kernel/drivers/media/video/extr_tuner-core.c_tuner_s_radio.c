
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct tuner {int dummy; } ;
struct i2c_client {int dummy; } ;


 int EINVAL ;
 int V4L2_TUNER_RADIO ;
 int set_mode_freq (struct i2c_client*,struct tuner*,int ,int ) ;
 struct tuner* to_tuner (struct v4l2_subdev*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int tuner_s_radio(struct v4l2_subdev *sd)
{
 struct tuner *t = to_tuner(sd);
 struct i2c_client *client = v4l2_get_subdevdata(sd);

 if (set_mode_freq(client, t, V4L2_TUNER_RADIO, 0) == -EINVAL)
  return 0;
 return 0;
}
