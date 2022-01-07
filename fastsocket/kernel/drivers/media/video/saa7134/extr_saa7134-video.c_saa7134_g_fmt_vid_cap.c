
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int width; int height; int bytesperline; int sizeimage; int pixelformat; int field; } ;
struct TYPE_8__ {TYPE_3__ pix; } ;
struct v4l2_format {TYPE_4__ fmt; } ;
struct TYPE_5__ {int field; } ;
struct saa7134_fh {int width; int height; TYPE_2__* fmt; TYPE_1__ cap; } ;
struct file {int dummy; } ;
struct TYPE_6__ {int depth; int fourcc; } ;



__attribute__((used)) static int saa7134_g_fmt_vid_cap(struct file *file, void *priv,
    struct v4l2_format *f)
{
 struct saa7134_fh *fh = priv;

 f->fmt.pix.width = fh->width;
 f->fmt.pix.height = fh->height;
 f->fmt.pix.field = fh->cap.field;
 f->fmt.pix.pixelformat = fh->fmt->fourcc;
 f->fmt.pix.bytesperline =
  (f->fmt.pix.width * fh->fmt->depth) >> 3;
 f->fmt.pix.sizeimage =
  f->fmt.pix.height * f->fmt.pix.bytesperline;
 return 0;
}
