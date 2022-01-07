
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vino_channel_settings {int dummy; } ;
struct TYPE_3__ {int height; int width; int top; int left; } ;
struct v4l2_crop {int type; TYPE_1__ c; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int input_lock; } ;


 int EINVAL ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct vino_channel_settings* video_drvdata (struct file*) ;
 TYPE_2__* vino_drvdata ;
 int vino_set_clipping (struct vino_channel_settings*,int ,int ,int ,int ) ;

__attribute__((used)) static int vino_s_crop(struct file *file, void *__fh,
       struct v4l2_crop *c)
{
 struct vino_channel_settings *vcs = video_drvdata(file);
 unsigned long flags;

 switch (c->type) {
 case 129:
  spin_lock_irqsave(&vino_drvdata->input_lock, flags);

  vino_set_clipping(vcs, c->c.left, c->c.top,
      c->c.width, c->c.height);

  spin_unlock_irqrestore(&vino_drvdata->input_lock, flags);
  break;
 case 128:
 default:
  return -EINVAL;
 }

 return 0;
}
