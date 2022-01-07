
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vino_channel_settings {int fps; } ;
struct TYPE_5__ {int numerator; int denominator; } ;
struct v4l2_captureparm {TYPE_2__ timeperframe; int capability; } ;
struct TYPE_4__ {struct v4l2_captureparm capture; } ;
struct v4l2_streamparm {TYPE_1__ parm; } ;
struct file {int dummy; } ;
struct TYPE_6__ {int input_lock; } ;


 int V4L2_CAP_TIMEPERFRAME ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct vino_channel_settings* video_drvdata (struct file*) ;
 TYPE_3__* vino_drvdata ;

__attribute__((used)) static int vino_g_parm(struct file *file, void *__fh,
       struct v4l2_streamparm *sp)
{
 struct vino_channel_settings *vcs = video_drvdata(file);
 unsigned long flags;
 struct v4l2_captureparm *cp = &sp->parm.capture;

 cp->capability = V4L2_CAP_TIMEPERFRAME;
 cp->timeperframe.numerator = 1;

 spin_lock_irqsave(&vino_drvdata->input_lock, flags);

 cp->timeperframe.denominator = vcs->fps;

 spin_unlock_irqrestore(&vino_drvdata->input_lock, flags);



 return 0;
}
