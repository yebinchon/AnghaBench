
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_frequency {int frequency; int type; } ;
struct tuner {int dummy; } ;
struct i2c_client {int dummy; } ;


 int EINVAL ;
 int set_mode_freq (struct i2c_client*,struct tuner*,int ,int ) ;
 struct tuner* to_tuner (struct v4l2_subdev*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int tuner_s_frequency(struct v4l2_subdev *sd, struct v4l2_frequency *f)
{
 struct tuner *t = to_tuner(sd);
 struct i2c_client *client = v4l2_get_subdevdata(sd);

 if (set_mode_freq(client, t, f->type, f->frequency) == -EINVAL)
  return 0;

 return 0;
}
