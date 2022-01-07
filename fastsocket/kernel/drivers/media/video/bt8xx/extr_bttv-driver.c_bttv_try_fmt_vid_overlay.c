
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int win; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct file {int dummy; } ;
struct bttv_fh {int dummy; } ;


 int verify_window_lock (struct bttv_fh*,int *,int,int ) ;

__attribute__((used)) static int bttv_try_fmt_vid_overlay(struct file *file, void *priv,
      struct v4l2_format *f)
{
 struct bttv_fh *fh = priv;

 return verify_window_lock(fh, &f->fmt.win,
                     1,
                     0);
}
