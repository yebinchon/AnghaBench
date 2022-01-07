
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct v4l2_tuner {int audmode; } ;
struct v4l2_subdev {int dummy; } ;
struct ivtv {TYPE_1__* card; } ;
struct TYPE_4__ {int mask; int lang1; int lang2; int mono; int stereo; } ;
struct TYPE_3__ {TYPE_2__ gpio_audio_mode; } ;


 int IVTV_REG_GPIO_OUT ;





 int read_reg (int ) ;
 struct ivtv* sd_to_ivtv (struct v4l2_subdev*) ;
 int write_reg (int,int ) ;

__attribute__((used)) static int subdev_s_tuner(struct v4l2_subdev *sd, struct v4l2_tuner *vt)
{
 struct ivtv *itv = sd_to_ivtv(sd);
 u16 mask, data;

 mask = itv->card->gpio_audio_mode.mask;
 switch (vt->audmode) {
 case 132:
  data = itv->card->gpio_audio_mode.lang1;
  break;
 case 130:
  data = itv->card->gpio_audio_mode.lang2;
  break;
 case 129:
  data = itv->card->gpio_audio_mode.mono;
  break;
 case 128:
 case 131:
 default:
  data = itv->card->gpio_audio_mode.stereo;
  break;
 }
 if (mask)
  write_reg((read_reg(IVTV_REG_GPIO_OUT) & ~mask) | (data & mask), IVTV_REG_GPIO_OUT);
 return 0;
}
