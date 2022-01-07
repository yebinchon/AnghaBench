
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {int frequency; int type; } ;
struct file {int dummy; } ;
struct bttv_fh {struct bttv* btv; } ;
struct bttv {int freq; scalar_t__ radio_user; } ;


 int V4L2_TUNER_ANALOG_TV ;
 int V4L2_TUNER_RADIO ;

__attribute__((used)) static int bttv_g_frequency(struct file *file, void *priv,
     struct v4l2_frequency *f)
{
 struct bttv_fh *fh = priv;
 struct bttv *btv = fh->btv;

 f->type = btv->radio_user ? V4L2_TUNER_RADIO : V4L2_TUNER_ANALOG_TV;
 f->frequency = btv->freq;

 return 0;
}
