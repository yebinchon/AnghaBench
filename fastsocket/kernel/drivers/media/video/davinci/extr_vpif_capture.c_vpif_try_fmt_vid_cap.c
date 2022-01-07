
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vpif_fh {struct channel_obj* channel; } ;
struct v4l2_pix_format {int dummy; } ;
struct TYPE_2__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct file {int dummy; } ;
struct channel_obj {int dummy; } ;


 int vpif_check_format (struct channel_obj*,struct v4l2_pix_format*,int) ;

__attribute__((used)) static int vpif_try_fmt_vid_cap(struct file *file, void *priv,
    struct v4l2_format *fmt)
{
 struct vpif_fh *fh = priv;
 struct channel_obj *ch = fh->channel;
 struct v4l2_pix_format *pixfmt = &fmt->fmt.pix;

 return vpif_check_format(ch, pixfmt, 1);
}
