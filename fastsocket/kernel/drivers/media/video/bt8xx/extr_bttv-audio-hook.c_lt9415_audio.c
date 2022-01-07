
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
 int gpio_bits (int,int) ;
 int gpio_read () ;

void lt9415_audio(struct bttv *btv, struct v4l2_tuner *t, int set)
{
 int val = 0;

 if (gpio_read() & 0x4000) {
  t->audmode = V4L2_TUNER_MODE_MONO;
  return;
 }

 if (set) {
  if (t->audmode & V4L2_TUNER_MODE_LANG2)
   val = 0x0080;
  if (t->audmode & V4L2_TUNER_MODE_STEREO)
   val = 0x0880;
  if ((t->audmode & V4L2_TUNER_MODE_LANG1) ||
      (t->audmode & V4L2_TUNER_MODE_MONO))
   val = 0;
  gpio_bits(0x0880, val);
  if (bttv_gpio)
   bttv_gpio_tracking(btv,"lt9415");
 } else {

  t->audmode = V4L2_TUNER_MODE_MONO | V4L2_TUNER_MODE_STEREO |
   V4L2_TUNER_MODE_LANG1 | V4L2_TUNER_MODE_LANG2;
  return;
 }
}
