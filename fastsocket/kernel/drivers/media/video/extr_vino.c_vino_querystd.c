
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int v4l2_std_id ;
struct vino_channel_settings {int input; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int input_lock; } ;
struct TYPE_3__ {int std; } ;


 int EINVAL ;



 int decoder_call (int ,int ,int *) ;
 int querystd ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int video ;
 struct vino_channel_settings* video_drvdata (struct file*) ;
 TYPE_2__* vino_drvdata ;
 TYPE_1__* vino_inputs ;

__attribute__((used)) static int vino_querystd(struct file *file, void *__fh,
         v4l2_std_id *std)
{
 struct vino_channel_settings *vcs = video_drvdata(file);
 unsigned long flags;
 int err = 0;

 spin_lock_irqsave(&vino_drvdata->input_lock, flags);

 switch (vcs->input) {
 case 129:
  *std = vino_inputs[vcs->input].std;
  break;
 case 130:
 case 128: {
  decoder_call(video, querystd, std);
  break;
 }
 default:
  err = -EINVAL;
 }

 spin_unlock_irqrestore(&vino_drvdata->input_lock, flags);

 return err;
}
