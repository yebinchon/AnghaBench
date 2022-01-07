
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vino_channel_settings {int dummy; } ;
struct TYPE_4__ {int numerator; int denominator; } ;
struct v4l2_captureparm {TYPE_1__ timeperframe; } ;
struct TYPE_5__ {struct v4l2_captureparm capture; } ;
struct v4l2_streamparm {TYPE_2__ parm; } ;
struct file {int dummy; } ;
struct TYPE_6__ {int input_lock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct vino_channel_settings* video_drvdata (struct file*) ;
 TYPE_3__* vino_drvdata ;
 int vino_set_default_framerate (struct vino_channel_settings*) ;
 int vino_set_framerate (struct vino_channel_settings*,int) ;

__attribute__((used)) static int vino_s_parm(struct file *file, void *__fh,
       struct v4l2_streamparm *sp)
{
 struct vino_channel_settings *vcs = video_drvdata(file);
 unsigned long flags;
 struct v4l2_captureparm *cp = &sp->parm.capture;

 spin_lock_irqsave(&vino_drvdata->input_lock, flags);

 if ((cp->timeperframe.numerator == 0) ||
     (cp->timeperframe.denominator == 0)) {

  vino_set_default_framerate(vcs);
 } else {
  vino_set_framerate(vcs, cp->timeperframe.denominator /
       cp->timeperframe.numerator);
 }

 spin_unlock_irqrestore(&vino_drvdata->input_lock, flags);

 return 0;
}
