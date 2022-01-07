
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct analog_demod_ops {int (* standby ) (TYPE_2__*) ;} ;
struct TYPE_3__ {struct analog_demod_ops analog_ops; } ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct tuner {int mode; int standby; unsigned int radio_freq; unsigned int tv_freq; TYPE_2__ fe; } ;
struct i2c_client {int dummy; } ;
typedef enum v4l2_tuner_type { ____Placeholder_v4l2_tuner_type } v4l2_tuner_type ;


 int EINVAL ;
 scalar_t__ V4L2_TUNER_RADIO ;
 int check_mode (struct tuner*,int) ;
 int set_radio_freq (struct i2c_client*,unsigned int) ;
 int set_tv_freq (struct i2c_client*,unsigned int) ;
 int stub1 (TYPE_2__*) ;
 int tuner_dbg (char*,int) ;

__attribute__((used)) static int set_mode_freq(struct i2c_client *client, struct tuner *t,
    enum v4l2_tuner_type mode, unsigned int freq)
{
 struct analog_demod_ops *analog_ops = &t->fe.ops.analog_ops;

 if (mode != t->mode) {
  if (check_mode(t, mode) == -EINVAL) {
   tuner_dbg("Tuner doesn't support mode %d. "
      "Putting tuner to sleep\n", mode);
   t->standby = 1;
   if (analog_ops->standby)
    analog_ops->standby(&t->fe);
   return -EINVAL;
  }
  t->mode = mode;
  tuner_dbg("Changing to mode %d\n", mode);
 }
 if (t->mode == V4L2_TUNER_RADIO) {
  if (freq)
   t->radio_freq = freq;
  set_radio_freq(client, t->radio_freq);
 } else {
  if (freq)
   t->tv_freq = freq;
  set_tv_freq(client, t->tv_freq);
 }

 return 0;
}
