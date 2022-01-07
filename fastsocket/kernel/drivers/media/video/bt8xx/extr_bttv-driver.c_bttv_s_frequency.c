
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {scalar_t__ tuner; scalar_t__ type; int frequency; } ;
struct file {int dummy; } ;
struct bttv_fh {int prio; struct bttv* btv; } ;
struct bttv {int freq; scalar_t__ radio_user; scalar_t__ has_matchbox; int prio; } ;


 int EINVAL ;
 scalar_t__ V4L2_TUNER_ANALOG_TV ;
 scalar_t__ V4L2_TUNER_RADIO ;
 int bttv_call_all (struct bttv*,int ,int ,struct v4l2_frequency*) ;
 int s_frequency ;
 int tea5757_set_freq (struct bttv*,int ) ;
 int tuner ;
 scalar_t__ unlikely (int) ;
 int v4l2_prio_check (int *,int ) ;

__attribute__((used)) static int bttv_s_frequency(struct file *file, void *priv,
     struct v4l2_frequency *f)
{
 struct bttv_fh *fh = priv;
 struct bttv *btv = fh->btv;
 int err;

 if (unlikely(f->tuner != 0))
  return -EINVAL;

 err = v4l2_prio_check(&btv->prio, fh->prio);
 if (unlikely(err))
  goto err;

 if (unlikely(f->type != (btv->radio_user
  ? V4L2_TUNER_RADIO : V4L2_TUNER_ANALOG_TV))) {
  err = -EINVAL;
  goto err;
 }
 btv->freq = f->frequency;
 bttv_call_all(btv, tuner, s_frequency, f);
 if (btv->has_matchbox && btv->radio_user)
  tea5757_set_freq(btv, btv->freq);
err:

 return 0;
}
