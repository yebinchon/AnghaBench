
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct v4l2_mbus_framefmt {int width; int height; int code; } ;
struct TYPE_4__ {int width; int height; } ;
struct TYPE_5__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct file {int dummy; } ;
struct cx18_open_id {int prio; struct cx18* cx; } ;
struct TYPE_6__ {int width; int height; } ;
struct cx18 {int sd_av; TYPE_3__ params; int ana_capturing; int prio; } ;


 int EBUSY ;
 int V4L2_MBUS_FMT_FIXED ;
 scalar_t__ atomic_read (int *) ;
 int cx18_g_fmt_vid_cap (struct file*,void*,struct v4l2_format*) ;
 int cx18_try_fmt_vid_cap (struct file*,void*,struct v4l2_format*) ;
 int s_mbus_fmt ;
 int v4l2_prio_check (int *,int ) ;
 int v4l2_subdev_call (int ,int ,int ,struct v4l2_mbus_framefmt*) ;
 int video ;

__attribute__((used)) static int cx18_s_fmt_vid_cap(struct file *file, void *fh,
    struct v4l2_format *fmt)
{
 struct cx18_open_id *id = fh;
 struct cx18 *cx = id->cx;
 struct v4l2_mbus_framefmt mbus_fmt;
 int ret;
 int w, h;

 ret = v4l2_prio_check(&cx->prio, id->prio);
 if (ret)
  return ret;

 ret = cx18_try_fmt_vid_cap(file, fh, fmt);
 if (ret)
  return ret;
 w = fmt->fmt.pix.width;
 h = fmt->fmt.pix.height;

 if (cx->params.width == w && cx->params.height == h)
  return 0;

 if (atomic_read(&cx->ana_capturing) > 0)
  return -EBUSY;

 mbus_fmt.width = cx->params.width = w;
 mbus_fmt.height = cx->params.height = h;
 mbus_fmt.code = V4L2_MBUS_FMT_FIXED;
 v4l2_subdev_call(cx->sd_av, video, s_mbus_fmt, &mbus_fmt);
 return cx18_g_fmt_vid_cap(file, fh, fmt);
}
