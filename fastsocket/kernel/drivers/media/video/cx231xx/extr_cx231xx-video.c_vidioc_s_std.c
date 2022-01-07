
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef struct v4l2_mbus_framefmt* v4l2_std_id ;
struct v4l2_mbus_framefmt {int dummy; } ;
struct TYPE_5__ {int height; int width; } ;
struct TYPE_4__ {TYPE_2__ pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct file {int dummy; } ;
struct cx231xx_fh {struct cx231xx* dev; } ;
struct cx231xx {int height; int width; struct v4l2_mbus_framefmt* norm; } ;


 int V4L2_MBUS_FMT_FIXED ;
 int call_all (struct cx231xx*,int ,int ,struct v4l2_mbus_framefmt*) ;
 int check_dev (struct cx231xx*) ;
 int core ;
 int cx231xx_do_mode_ctrl_overrides (struct cx231xx*) ;
 int cx231xx_info (char*,unsigned int) ;
 int s_mbus_fmt ;
 int s_std ;
 int v4l2_fill_mbus_format (struct v4l2_mbus_framefmt*,TYPE_2__*,int ) ;
 int v4l2_fill_pix_format (TYPE_2__*,struct v4l2_mbus_framefmt*) ;
 int video ;
 int vidioc_try_fmt_vid_cap (struct file*,void*,struct v4l2_format*) ;

__attribute__((used)) static int vidioc_s_std(struct file *file, void *priv, v4l2_std_id *norm)
{
 struct cx231xx_fh *fh = priv;
 struct cx231xx *dev = fh->dev;
 struct v4l2_mbus_framefmt mbus_fmt;
 struct v4l2_format f;
 int rc;

 rc = check_dev(dev);
 if (rc < 0)
  return rc;

 cx231xx_info("vidioc_s_std : 0x%x\n", (unsigned int)*norm);

 dev->norm = *norm;


 f.fmt.pix.width = dev->width;
 f.fmt.pix.height = dev->height;
 vidioc_try_fmt_vid_cap(file, priv, &f);

 call_all(dev, core, s_std, dev->norm);




 v4l2_fill_mbus_format(&mbus_fmt, &f.fmt.pix, V4L2_MBUS_FMT_FIXED);
 call_all(dev, video, s_mbus_fmt, &mbus_fmt);
 v4l2_fill_pix_format(&f.fmt.pix, &mbus_fmt);


 dev->width = f.fmt.pix.width;
 dev->height = f.fmt.pix.height;


 cx231xx_do_mode_ctrl_overrides(dev);

 return 0;
}
