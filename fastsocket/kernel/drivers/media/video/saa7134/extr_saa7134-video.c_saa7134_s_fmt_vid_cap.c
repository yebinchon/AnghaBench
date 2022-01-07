
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
struct TYPE_4__ {int field; } ;
struct saa7134_fh {TYPE_1__ cap; int height; int width; int fmt; } ;
struct file {int dummy; } ;


 int format_by_fourcc (int ) ;
 int saa7134_try_fmt_vid_cap (struct file*,void*,struct v4l2_format*) ;

__attribute__((used)) static int saa7134_s_fmt_vid_cap(struct file *file, void *priv,
     struct v4l2_format *f)
{
 struct saa7134_fh *fh = priv;
 int err;

 err = saa7134_try_fmt_vid_cap(file, priv, f);
 if (0 != err)
  return err;

 fh->fmt = format_by_fourcc(f->fmt.pix.pixelformat);
 fh->width = f->fmt.pix.width;
 fh->height = f->fmt.pix.height;
 fh->cap.field = f->fmt.pix.field;
 return 0;
}
