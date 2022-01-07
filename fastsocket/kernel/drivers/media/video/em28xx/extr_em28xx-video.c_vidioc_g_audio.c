
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_audio {int capability; int index; int name; } ;
struct file {int dummy; } ;
struct em28xx_fh {struct em28xx* dev; } ;
struct TYPE_2__ {int has_audio; } ;
struct em28xx {int ctl_ainput; TYPE_1__ audio_mode; } ;


 int EINVAL ;
 int V4L2_AUDCAP_STEREO ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int vidioc_g_audio(struct file *file, void *priv, struct v4l2_audio *a)
{
 struct em28xx_fh *fh = priv;
 struct em28xx *dev = fh->dev;

 if (!dev->audio_mode.has_audio)
  return -EINVAL;

 switch (a->index) {
 case 129:
  strcpy(a->name, "Television");
  break;
 case 133:
  strcpy(a->name, "Line In");
  break;
 case 128:
  strcpy(a->name, "Television alt");
  break;
 case 130:
  strcpy(a->name, "Phone");
  break;
 case 132:
  strcpy(a->name, "Mic");
  break;
 case 134:
  strcpy(a->name, "CD");
  break;
 case 135:
  strcpy(a->name, "Aux");
  break;
 case 131:
  strcpy(a->name, "PCM");
  break;
 default:
  return -EINVAL;
 }

 a->index = dev->ctl_ainput;
 a->capability = V4L2_AUDCAP_STEREO;

 return 0;
}
