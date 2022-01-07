
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_frequency {scalar_t__ type; int frequency; } ;
struct dvb_tuner_ops {int (* get_frequency ) (TYPE_2__*,int*) ;} ;
struct TYPE_3__ {struct dvb_tuner_ops tuner_ops; } ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct tuner {scalar_t__ mode; int tv_freq; int radio_freq; TYPE_2__ fe; int standby; } ;


 int DIV_ROUND_CLOSEST (int,int) ;
 int EINVAL ;
 scalar_t__ V4L2_TUNER_RADIO ;
 int check_mode (struct tuner*,scalar_t__) ;
 int stub1 (TYPE_2__*,int*) ;
 struct tuner* to_tuner (struct v4l2_subdev*) ;

__attribute__((used)) static int tuner_g_frequency(struct v4l2_subdev *sd, struct v4l2_frequency *f)
{
 struct tuner *t = to_tuner(sd);
 struct dvb_tuner_ops *fe_tuner_ops = &t->fe.ops.tuner_ops;

 if (check_mode(t, f->type) == -EINVAL)
  return 0;
 f->type = t->mode;
 if (fe_tuner_ops->get_frequency && !t->standby) {
  u32 abs_freq;

  fe_tuner_ops->get_frequency(&t->fe, &abs_freq);
  f->frequency = (V4L2_TUNER_RADIO == t->mode) ?
   DIV_ROUND_CLOSEST(abs_freq * 2, 125) :
   DIV_ROUND_CLOSEST(abs_freq, 62500);
 } else {
  f->frequency = (V4L2_TUNER_RADIO == t->mode) ?
   t->radio_freq : t->tv_freq;
 }
 return 0;
}
