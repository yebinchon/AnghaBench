
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int field; int w; } ;
struct TYPE_5__ {TYPE_1__ win; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct file {int dummy; } ;
struct TYPE_6__ {int field; int w; } ;
struct bttv_fh {TYPE_3__ ov; } ;



__attribute__((used)) static int bttv_g_fmt_vid_overlay(struct file *file, void *priv,
     struct v4l2_format *f)
{
 struct bttv_fh *fh = priv;

 f->fmt.win.w = fh->ov.w;
 f->fmt.win.field = fh->ov.field;

 return 0;
}
