
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_control {int value; int id; } ;
struct snd_kcontrol {int dummy; } ;
struct snd_cx18_card {int v4l2_dev; } ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct cx18 {int sd_av; } ;


 int V4L2_CID_AUDIO_VOLUME ;
 int core ;
 int cx18_av_vol_to_dB (int ) ;
 int dB_to_cx18_av_vol (int ) ;
 int g_ctrl ;
 int snd_cx18_lock (struct snd_cx18_card*) ;
 int snd_cx18_unlock (struct snd_cx18_card*) ;
 struct snd_cx18_card* snd_kcontrol_chip (struct snd_kcontrol*) ;
 struct cx18* to_cx18 (int ) ;
 int v4l2_subdev_call (int ,int ,int ,struct v4l2_control*) ;

__attribute__((used)) static int snd_cx18_mixer_tv_vol_get(struct snd_kcontrol *kctl,
         struct snd_ctl_elem_value *uctl)
{
 struct snd_cx18_card *cxsc = snd_kcontrol_chip(kctl);
 struct cx18 *cx = to_cx18(cxsc->v4l2_dev);
 struct v4l2_control vctrl;
 int ret;

 vctrl.id = V4L2_CID_AUDIO_VOLUME;
 vctrl.value = dB_to_cx18_av_vol(uctl->value.integer.value[0]);

 snd_cx18_lock(cxsc);
 ret = v4l2_subdev_call(cx->sd_av, core, g_ctrl, &vctrl);
 snd_cx18_unlock(cxsc);

 if (!ret)
  uctl->value.integer.value[0] = cx18_av_vol_to_dB(vctrl.value);
 return ret;
}
