
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vino_channel_settings {int input; } ;
struct v4l2_queryctrl {int * reserved; int id; } ;
struct file {int dummy; } ;
struct TYPE_6__ {int input_lock; } ;
struct TYPE_5__ {int id; } ;


 int EINVAL ;
 int VINO_INDYCAM_V4L2_CONTROL_COUNT ;



 int VINO_SAA7191_V4L2_CONTROL_COUNT ;
 int memcpy (struct v4l2_queryctrl*,TYPE_1__*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct vino_channel_settings* video_drvdata (struct file*) ;
 TYPE_3__* vino_drvdata ;
 TYPE_1__* vino_indycam_v4l2_controls ;
 TYPE_1__* vino_saa7191_v4l2_controls ;

__attribute__((used)) static int vino_queryctrl(struct file *file, void *__fh,
          struct v4l2_queryctrl *queryctrl)
{
 struct vino_channel_settings *vcs = video_drvdata(file);
 unsigned long flags;
 int i;
 int err = 0;

 spin_lock_irqsave(&vino_drvdata->input_lock, flags);

 switch (vcs->input) {
 case 129:
  for (i = 0; i < VINO_INDYCAM_V4L2_CONTROL_COUNT; i++) {
   if (vino_indycam_v4l2_controls[i].id ==
       queryctrl->id) {
    memcpy(queryctrl,
           &vino_indycam_v4l2_controls[i],
           sizeof(struct v4l2_queryctrl));
    queryctrl->reserved[0] = 0;
    goto found;
   }
  }

  err = -EINVAL;
  break;
 case 130:
 case 128:
  for (i = 0; i < VINO_SAA7191_V4L2_CONTROL_COUNT; i++) {
   if (vino_saa7191_v4l2_controls[i].id ==
       queryctrl->id) {
    memcpy(queryctrl,
           &vino_saa7191_v4l2_controls[i],
           sizeof(struct v4l2_queryctrl));
    queryctrl->reserved[0] = 0;
    goto found;
   }
  }

  err = -EINVAL;
  break;
 default:
  err = -EINVAL;
 }

 found:
 spin_unlock_irqrestore(&vino_drvdata->input_lock, flags);

 return err;
}
