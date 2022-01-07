
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
 int gpio_bits (int,unsigned int) ;

void adtvk503_audio(struct bttv *btv, struct v4l2_tuner *t, int set)
{
 unsigned int con = 0xffffff;



 if (set) {

  if (t->audmode & V4L2_TUNER_MODE_LANG1)
   con = 0x00000000;
  if (t->audmode & V4L2_TUNER_MODE_LANG2)
   con = 0x00180000;
  if (t->audmode & V4L2_TUNER_MODE_STEREO)
   con = 0x00000000;
  if (t->audmode & V4L2_TUNER_MODE_MONO)
   con = 0x00060000;
  if (con != 0xffffff) {
   gpio_bits(0x1e0000,con);
   if (bttv_gpio)
    bttv_gpio_tracking(btv, "adtvk503");
  }
 } else {
  t->audmode = V4L2_TUNER_MODE_MONO | V4L2_TUNER_MODE_STEREO |
     V4L2_TUNER_MODE_LANG1 | V4L2_TUNER_MODE_LANG2;
 }
}
