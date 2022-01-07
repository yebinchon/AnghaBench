
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int field; int height; int width; int pixelformat; } ;
struct TYPE_6__ {TYPE_2__ pix; } ;
struct v4l2_format {TYPE_3__ fmt; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int field; } ;
struct cx8800_fh {TYPE_1__ vidq; int height; int width; int fmt; } ;


 int format_by_fourcc (int ) ;
 int vidioc_try_fmt_vid_cap (struct file*,void*,struct v4l2_format*) ;

__attribute__((used)) static int vidioc_s_fmt_vid_cap(struct file *file, void *priv,
     struct v4l2_format *f)
{
 struct cx8800_fh *fh = priv;
 int err = vidioc_try_fmt_vid_cap (file,priv,f);

 if (0 != err)
  return err;
 fh->fmt = format_by_fourcc(f->fmt.pix.pixelformat);
 fh->width = f->fmt.pix.width;
 fh->height = f->fmt.pix.height;
 fh->vidq.field = f->fmt.pix.field;
 return 0;
}
