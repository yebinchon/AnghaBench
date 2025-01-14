
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t priv; int sizeimage; int pixelformat; } ;
struct TYPE_7__ {TYPE_2__ pix; } ;
struct v4l2_format {TYPE_3__ fmt; } ;
struct TYPE_5__ {int mode; int palette; } ;
struct stk_camera {TYPE_1__ vsettings; int frame_size; struct file* owner; } ;
struct file {int dummy; } ;
struct TYPE_8__ {int m; } ;


 int EBUSY ;
 int ENODEV ;
 int is_present (struct stk_camera*) ;
 scalar_t__ is_streaming (struct stk_camera*) ;
 int stk_free_buffers (struct stk_camera*) ;
 int stk_initialise (struct stk_camera*) ;
 int stk_setup_format (struct stk_camera*) ;
 TYPE_4__* stk_sizes ;
 int stk_vidioc_try_fmt_vid_cap (struct file*,void*,struct v4l2_format*) ;

__attribute__((used)) static int stk_vidioc_s_fmt_vid_cap(struct file *filp,
  void *priv, struct v4l2_format *fmtd)
{
 int ret;
 struct stk_camera *dev = priv;

 if (dev == ((void*)0))
  return -ENODEV;
 if (!is_present(dev))
  return -ENODEV;
 if (is_streaming(dev))
  return -EBUSY;
 if (dev->owner && dev->owner != filp)
  return -EBUSY;
 ret = stk_vidioc_try_fmt_vid_cap(filp, priv, fmtd);
 if (ret)
  return ret;
 dev->owner = filp;

 dev->vsettings.palette = fmtd->fmt.pix.pixelformat;
 stk_free_buffers(dev);
 dev->frame_size = fmtd->fmt.pix.sizeimage;
 dev->vsettings.mode = stk_sizes[fmtd->fmt.pix.priv].m;

 stk_initialise(dev);
 return stk_setup_format(dev);
}
