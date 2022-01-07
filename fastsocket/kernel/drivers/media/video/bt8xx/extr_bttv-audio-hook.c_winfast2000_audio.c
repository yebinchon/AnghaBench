
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {int audmode; } ;
struct bttv {int dummy; } ;


 int V4L2_TUNER_MODE_LANG1 ;
 int V4L2_TUNER_MODE_LANG2 ;
 int V4L2_TUNER_MODE_MONO ;
 int V4L2_TUNER_MODE_STEREO ;
 scalar_t__ bttv_gpio ;
 int bttv_gpio_tracking (struct bttv*,char*) ;
 int gpio_bits (int,unsigned long) ;

void winfast2000_audio(struct bttv *btv, struct v4l2_tuner *t, int set)
{
 unsigned long val = 0;

 if (set) {

  if (t->audmode & V4L2_TUNER_MODE_MONO)
   val = 0x420000;
  if (t->audmode & V4L2_TUNER_MODE_LANG1)
   val = 0x420000;
  if (t->audmode & V4L2_TUNER_MODE_LANG2)
   val = 0x410000;
  if (t->audmode & V4L2_TUNER_MODE_STEREO)
   val = 0x020000;
  if (val) {
   gpio_bits(0x430000, val);
   if (bttv_gpio)
    bttv_gpio_tracking(btv,"winfast2000");
  }
 } else {
  t->audmode = V4L2_TUNER_MODE_MONO | V4L2_TUNER_MODE_STEREO |
     V4L2_TUNER_MODE_LANG1 | V4L2_TUNER_MODE_LANG2;
 }
}
