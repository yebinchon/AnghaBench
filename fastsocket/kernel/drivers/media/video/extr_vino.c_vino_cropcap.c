
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vino_data_norm {int height; int width; } ;
struct vino_channel_settings {size_t data_norm; } ;
struct v4l2_rect {int dummy; } ;
struct TYPE_4__ {int numerator; int denominator; } ;
struct TYPE_6__ {int height; int width; int top; int left; } ;
struct v4l2_cropcap {int type; TYPE_1__ pixelaspect; TYPE_3__ bounds; int defrect; } ;
struct file {int dummy; } ;
struct TYPE_5__ {int input_lock; } ;


 int EINVAL ;


 int memcpy (int *,TYPE_3__*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct vino_channel_settings* video_drvdata (struct file*) ;
 struct vino_data_norm* vino_data_norms ;
 TYPE_2__* vino_drvdata ;

__attribute__((used)) static int vino_cropcap(struct file *file, void *__fh,
        struct v4l2_cropcap *ccap)
{
 struct vino_channel_settings *vcs = video_drvdata(file);
 const struct vino_data_norm *norm;
 unsigned long flags;

 switch (ccap->type) {
 case 129:
  spin_lock_irqsave(&vino_drvdata->input_lock, flags);

  norm = &vino_data_norms[vcs->data_norm];

  spin_unlock_irqrestore(&vino_drvdata->input_lock, flags);

  ccap->bounds.left = 0;
  ccap->bounds.top = 0;
  ccap->bounds.width = norm->width;
  ccap->bounds.height = norm->height;
  memcpy(&ccap->defrect, &ccap->bounds,
         sizeof(struct v4l2_rect));

  ccap->pixelaspect.numerator = 1;
  ccap->pixelaspect.denominator = 1;
  break;
 case 128:
 default:
  return -EINVAL;
 }

 return 0;
}
