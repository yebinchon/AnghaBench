
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_subdev {int dummy; } ;
struct cx18 {TYPE_2__* card; } ;
struct TYPE_3__ {int tuner; int linein; int radio; int mask; } ;
struct TYPE_4__ {TYPE_1__ gpio_audio_input; } ;


 int EINVAL ;
 int gpio_update (struct cx18*,int ,int) ;
 struct cx18* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int gpiomux_s_audio_routing(struct v4l2_subdev *sd,
       u32 input, u32 output, u32 config)
{
 struct cx18 *cx = v4l2_get_subdevdata(sd);
 u32 data;

 switch (input) {
 case 0:
  data = cx->card->gpio_audio_input.tuner;
  break;
 case 1:
  data = cx->card->gpio_audio_input.linein;
  break;
 case 2:
  data = cx->card->gpio_audio_input.radio;
  break;
 default:
  return -EINVAL;
 }
 gpio_update(cx, cx->card->gpio_audio_input.mask, data);
 return 0;
}
