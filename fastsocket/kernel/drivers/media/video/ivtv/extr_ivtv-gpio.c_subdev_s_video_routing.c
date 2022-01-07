
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct v4l2_subdev {int dummy; } ;
struct ivtv {TYPE_2__* card; } ;
struct TYPE_3__ {int mask; int tuner; int composite; int svideo; } ;
struct TYPE_4__ {TYPE_1__ gpio_video_input; } ;


 int EINVAL ;
 int IVTV_REG_GPIO_OUT ;
 int read_reg (int ) ;
 struct ivtv* sd_to_ivtv (struct v4l2_subdev*) ;
 int write_reg (int,int ) ;

__attribute__((used)) static int subdev_s_video_routing(struct v4l2_subdev *sd,
      u32 input, u32 output, u32 config)
{
 struct ivtv *itv = sd_to_ivtv(sd);
 u16 mask, data;

 if (input > 2)
  return -EINVAL;
 mask = itv->card->gpio_video_input.mask;
 if (input == 0)
  data = itv->card->gpio_video_input.tuner;
 else if (input == 1)
  data = itv->card->gpio_video_input.composite;
 else
  data = itv->card->gpio_video_input.svideo;
 if (mask)
  write_reg((read_reg(IVTV_REG_GPIO_OUT) & ~mask) | (data & mask), IVTV_REG_GPIO_OUT);
 return 0;
}
