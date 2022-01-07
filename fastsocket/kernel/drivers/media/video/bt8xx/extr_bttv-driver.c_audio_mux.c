
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_control {int value; int id; } ;
struct TYPE_3__ {size_t type; } ;
struct bttv {int mute; int audio; scalar_t__ sd_tvaudio; scalar_t__ sd_msp34xx; TYPE_1__ c; int radio_user; scalar_t__ opt_automute; } ;
struct TYPE_4__ {int gpiomute; int* gpiomux; int gpiomask; } ;


 int BT848_DSTATUS ;
 int BT848_DSTATUS_HLOC ;


 int MSP_DSP_IN_SCART ;
 int MSP_DSP_IN_TUNER ;
 int MSP_INPUT (int ,int ,int ,int ) ;
 int MSP_INPUT_DEFAULT ;
 int MSP_IN_SCART1 ;
 int MSP_IN_SCART2 ;
 int MSP_IN_TUNER1 ;
 int MSP_IN_TUNER2 ;
 int MSP_OUTPUT_DEFAULT ;




 int V4L2_CID_AUDIO_MUTE ;
 int audio ;
 int * audio_modes ;
 int btread (int ) ;
 int bttv_call_all (struct bttv*,int ,int ,struct v4l2_control*) ;
 scalar_t__ bttv_gpio ;
 int bttv_gpio_tracking (struct bttv*,int ) ;
 int bttv_tda9880_setnorm (struct bttv*,int) ;
 TYPE_2__* bttv_tvcards ;
 int core ;
 int gpio_bits (int ,int) ;
 int gpio_inout (int ,int ) ;
 scalar_t__ in_interrupt () ;
 int s_ctrl ;
 int s_routing ;
 int v4l2_subdev_call (scalar_t__,int ,int ,int,int ,int ) ;

__attribute__((used)) static int
audio_mux(struct bttv *btv, int input, int mute)
{
 int gpio_val, signal;
 struct v4l2_control ctrl;

 gpio_inout(bttv_tvcards[btv->c.type].gpiomask,
     bttv_tvcards[btv->c.type].gpiomask);
 signal = btread(BT848_DSTATUS) & BT848_DSTATUS_HLOC;

 btv->mute = mute;
 btv->audio = input;


 mute = mute || (btv->opt_automute && !signal && !btv->radio_user);

 if (mute)
  gpio_val = bttv_tvcards[btv->c.type].gpiomute;
 else
  gpio_val = bttv_tvcards[btv->c.type].gpiomux[input];

 switch (btv->c.type) {
 case 132:
 case 133:
  gpio_val = bttv_tda9880_setnorm(btv, gpio_val);
  break;

 default:
  gpio_bits(bttv_tvcards[btv->c.type].gpiomask, gpio_val);
 }

 if (bttv_gpio)
  bttv_gpio_tracking(btv, audio_modes[mute ? 4 : input]);
 if (in_interrupt())
  return 0;

 ctrl.id = V4L2_CID_AUDIO_MUTE;
 ctrl.value = btv->mute;
 bttv_call_all(btv, core, s_ctrl, &ctrl);
 if (btv->sd_msp34xx) {
  u32 in;






  switch (input) {
  case 129:
   in = MSP_INPUT(MSP_IN_SCART2, MSP_IN_TUNER1,
        MSP_DSP_IN_SCART, MSP_DSP_IN_SCART);
   break;
  case 131:
   in = MSP_INPUT(MSP_IN_SCART1, MSP_IN_TUNER1,
        MSP_DSP_IN_SCART, MSP_DSP_IN_SCART);
   break;
  case 130:





   in = MSP_INPUT(MSP_IN_SCART2, MSP_IN_TUNER1,
        MSP_DSP_IN_SCART, MSP_DSP_IN_SCART);
   break;
  case 128:
  default:



   if (btv->c.type == 133)
    in = MSP_INPUT(MSP_IN_SCART1, MSP_IN_TUNER2, MSP_DSP_IN_TUNER, MSP_DSP_IN_TUNER);

   else
    in = MSP_INPUT_DEFAULT;
   break;
  }
  v4l2_subdev_call(btv->sd_msp34xx, audio, s_routing,
          in, MSP_OUTPUT_DEFAULT, 0);
 }
 if (btv->sd_tvaudio) {
  v4l2_subdev_call(btv->sd_tvaudio, audio, s_routing,
    input, 0, 0);
 }
 return 0;
}
