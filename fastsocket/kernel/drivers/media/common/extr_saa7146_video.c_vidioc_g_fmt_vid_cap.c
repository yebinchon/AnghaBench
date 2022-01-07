
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct saa7146_fh {int video_fmt; } ;
struct file {int dummy; } ;



__attribute__((used)) static int vidioc_g_fmt_vid_cap(struct file *file, void *fh, struct v4l2_format *f)
{
 f->fmt.pix = ((struct saa7146_fh *)fh)->video_fmt;
 return 0;
}
