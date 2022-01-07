
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zoltrix {int curvol; int stereo; int curfreq; } ;
struct v4l2_control {int id; int value; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int mode; } ;


 int EINVAL ;


 int VIDEO_SOUND_MONO ;
 int VIDEO_SOUND_STEREO ;
 TYPE_1__* v ;
 struct zoltrix* video_drvdata (struct file*) ;
 int zol_mute (struct zoltrix*) ;
 scalar_t__ zol_setfreq (struct zoltrix*,int ) ;
 int zol_setvol (struct zoltrix*,int) ;
 int zol_unmute (struct zoltrix*) ;

__attribute__((used)) static int vidioc_s_ctrl(struct file *file, void *priv,
    struct v4l2_control *ctrl)
{
 struct zoltrix *zol = video_drvdata(file);

 switch (ctrl->id) {
 case 129:
  if (ctrl->value)
   zol_mute(zol);
  else {
   zol_unmute(zol);
   zol_setvol(zol, zol->curvol);
  }
  return 0;
 case 128:
  zol_setvol(zol, ctrl->value / 4096);
  return 0;
 }
 zol->stereo = 1;
 if (zol_setfreq(zol, zol->curfreq) != 0)
  return -EINVAL;
 return -EINVAL;
}
