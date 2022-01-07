
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
struct vino_channel_settings {TYPE_2__ clipping; } ;
struct TYPE_4__ {scalar_t__ height; scalar_t__ width; scalar_t__ top; scalar_t__ left; } ;
struct v4l2_crop {int type; TYPE_1__ c; } ;
struct file {int dummy; } ;
struct TYPE_6__ {int input_lock; } ;


 int EINVAL ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct vino_channel_settings* video_drvdata (struct file*) ;
 TYPE_3__* vino_drvdata ;

__attribute__((used)) static int vino_g_crop(struct file *file, void *__fh,
       struct v4l2_crop *c)
{
 struct vino_channel_settings *vcs = video_drvdata(file);
 unsigned long flags;

 switch (c->type) {
 case 129:
  spin_lock_irqsave(&vino_drvdata->input_lock, flags);

  c->c.left = vcs->clipping.left;
  c->c.top = vcs->clipping.top;
  c->c.width = vcs->clipping.right - vcs->clipping.left;
  c->c.height = vcs->clipping.bottom - vcs->clipping.top;

  spin_unlock_irqrestore(&vino_drvdata->input_lock, flags);
  break;
 case 128:
 default:
  return -EINVAL;
 }

 return 0;
}
