
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fmtdesc {int dummy; } ;
struct omap24xxcam_fh {struct omap24xxcam_device* cam; } ;
struct omap24xxcam_device {int sdev; } ;
struct file {int dummy; } ;


 int vidioc_int_enum_fmt_cap (int ,struct v4l2_fmtdesc*) ;

__attribute__((used)) static int vidioc_enum_fmt_vid_cap(struct file *file, void *fh,
       struct v4l2_fmtdesc *f)
{
 struct omap24xxcam_fh *ofh = fh;
 struct omap24xxcam_device *cam = ofh->cam;
 int rval;

 rval = vidioc_int_enum_fmt_cap(cam->sdev, f);

 return rval;
}
