
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {scalar_t__ index; int type; int name; } ;
struct file {int dummy; } ;
struct bttv_fh {struct bttv* btv; } ;
struct bttv {scalar_t__ tuner_type; int (* audio_mode_gpio ) (struct bttv*,struct v4l2_tuner*,int ) ;} ;


 int EINVAL ;
 scalar_t__ TUNER_ABSENT ;
 int V4L2_TUNER_RADIO ;
 int bttv_call_all (struct bttv*,int ,int ,struct v4l2_tuner*) ;
 int g_tuner ;
 int strcpy (int ,char*) ;
 int stub1 (struct bttv*,struct v4l2_tuner*,int ) ;
 int tuner ;

__attribute__((used)) static int radio_g_tuner(struct file *file, void *priv, struct v4l2_tuner *t)
{
 struct bttv_fh *fh = priv;
 struct bttv *btv = fh->btv;

 if (btv->tuner_type == TUNER_ABSENT)
  return -EINVAL;
 if (0 != t->index)
  return -EINVAL;
 strcpy(t->name, "Radio");
 t->type = V4L2_TUNER_RADIO;

 bttv_call_all(btv, tuner, g_tuner, t);

 if (btv->audio_mode_gpio)
  btv->audio_mode_gpio(btv, t, 0);

 return 0;
}
