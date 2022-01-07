
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int vbi; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct file {int dummy; } ;
struct cx18_open_id {int prio; struct cx18* cx; } ;
struct TYPE_7__ {int type; } ;
struct TYPE_8__ {TYPE_3__ in; TYPE_2__* sliced_in; } ;
struct cx18 {TYPE_4__ vbi; int sd_av; int ana_capturing; int prio; } ;
struct TYPE_6__ {scalar_t__ service_set; } ;


 int EBUSY ;
 int V4L2_BUF_TYPE_VBI_CAPTURE ;
 scalar_t__ atomic_read (int *) ;
 int cx18_g_fmt_vbi_cap (struct file*,void*,struct v4l2_format*) ;
 int cx18_raw_vbi (struct cx18*) ;
 int s_raw_fmt ;
 int v4l2_prio_check (int *,int ) ;
 int v4l2_subdev_call (int ,int ,int ,int *) ;
 int vbi ;

__attribute__((used)) static int cx18_s_fmt_vbi_cap(struct file *file, void *fh,
    struct v4l2_format *fmt)
{
 struct cx18_open_id *id = fh;
 struct cx18 *cx = id->cx;
 int ret;

 ret = v4l2_prio_check(&cx->prio, id->prio);
 if (ret)
  return ret;





 if (!cx18_raw_vbi(cx) && atomic_read(&cx->ana_capturing) > 0)
  return -EBUSY;






 ret = v4l2_subdev_call(cx->sd_av, vbi, s_raw_fmt, &fmt->fmt.vbi);
 if (ret)
  return ret;


 cx->vbi.sliced_in->service_set = 0;
 cx->vbi.in.type = V4L2_BUF_TYPE_VBI_CAPTURE;

 return cx18_g_fmt_vbi_cap(file, fh, fmt);
}
