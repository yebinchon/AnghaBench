
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {scalar_t__ index; } ;
struct file {int dummy; } ;
struct bttv_fh {int prio; struct bttv* btv; } ;
struct bttv {scalar_t__ tuner_type; int (* audio_mode_gpio ) (struct bttv*,struct v4l2_tuner*,int) ;int prio; } ;


 int EINVAL ;
 scalar_t__ TUNER_ABSENT ;
 int bttv_call_all (struct bttv*,int ,int ,struct v4l2_tuner*) ;
 int s_tuner ;
 int stub1 (struct bttv*,struct v4l2_tuner*,int) ;
 int tuner ;
 scalar_t__ unlikely (int) ;
 int v4l2_prio_check (int *,int ) ;

__attribute__((used)) static int bttv_s_tuner(struct file *file, void *priv,
     struct v4l2_tuner *t)
{
 struct bttv_fh *fh = priv;
 struct bttv *btv = fh->btv;
 int err;

 if (unlikely(0 != t->index))
  return -EINVAL;

 if (unlikely(btv->tuner_type == TUNER_ABSENT)) {
  err = -EINVAL;
  goto err;
 }

 err = v4l2_prio_check(&btv->prio, fh->prio);
 if (unlikely(err))
  goto err;

 bttv_call_all(btv, tuner, s_tuner, t);

 if (btv->audio_mode_gpio)
  btv->audio_mode_gpio(btv, t, 1);

err:

 return 0;
}
