
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int win; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct TYPE_4__ {int win; } ;
struct saa7146_fh {TYPE_2__ ov; } ;
struct file {int dummy; } ;



__attribute__((used)) static int vidioc_g_fmt_vid_overlay(struct file *file, void *fh, struct v4l2_format *f)
{
 f->fmt.win = ((struct saa7146_fh *)fh)->ov.win;
 return 0;
}
