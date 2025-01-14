
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {int audmode; } ;
struct bttv {scalar_t__ radio_user; } ;


 int V4L2_TUNER_MODE_LANG1 ;
 int V4L2_TUNER_MODE_LANG2 ;
 int V4L2_TUNER_MODE_MONO ;
 int V4L2_TUNER_MODE_STEREO ;
 scalar_t__ bttv_gpio ;
 int bttv_gpio_tracking (struct bttv*,char*) ;
 int gpio_bits (int,unsigned int) ;

void pvbt878p9b_audio(struct bttv *btv, struct v4l2_tuner *t, int set)
{
 unsigned int val = 0;

 if (btv->radio_user)
  return;

 if (set) {
  if (t->audmode & V4L2_TUNER_MODE_MONO) {
   val = 0x01;
  }
  if ((t->audmode & (V4L2_TUNER_MODE_LANG1 | V4L2_TUNER_MODE_LANG2))
      || (t->audmode & V4L2_TUNER_MODE_STEREO)) {
   val = 0x02;
  }
  if (val) {
   gpio_bits(0x03,val);
   if (bttv_gpio)
    bttv_gpio_tracking(btv,"pvbt878p9b");
  }
 } else {
  t->audmode = V4L2_TUNER_MODE_MONO | V4L2_TUNER_MODE_STEREO |
   V4L2_TUNER_MODE_LANG1 | V4L2_TUNER_MODE_LANG2;
 }
}
