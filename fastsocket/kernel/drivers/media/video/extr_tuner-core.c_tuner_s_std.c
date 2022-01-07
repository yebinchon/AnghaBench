
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct v4l2_subdev {int dummy; } ;
struct tuner {int std; } ;
struct i2c_client {int dummy; } ;


 int EINVAL ;
 int V4L2_TUNER_ANALOG_TV ;
 int set_mode_freq (struct i2c_client*,struct tuner*,int ,int ) ;
 struct tuner* to_tuner (struct v4l2_subdev*) ;
 int tuner_fixup_std (struct tuner*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int tuner_s_std(struct v4l2_subdev *sd, v4l2_std_id std)
{
 struct tuner *t = to_tuner(sd);
 struct i2c_client *client = v4l2_get_subdevdata(sd);

 if (set_mode_freq(client, t, V4L2_TUNER_ANALOG_TV, 0) == -EINVAL)
  return 0;

 t->std = std;
 tuner_fixup_std(t);

 return 0;
}
