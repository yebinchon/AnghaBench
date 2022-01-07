
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int v4l2_std_id ;
struct TYPE_3__ {int height; int width; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct file {int dummy; } ;
struct em28xx_fh {struct em28xx* dev; } ;
struct em28xx {int norm; int v4l2_dev; int vscale; int hscale; int height; int width; } ;


 int check_dev (struct em28xx*) ;
 int core ;
 int em28xx_resolution_set (struct em28xx*) ;
 int get_scale (struct em28xx*,int ,int ,int *,int *) ;
 int s_std ;
 int v4l2_device_call_all (int *,int ,int ,int ,int ) ;
 int vidioc_try_fmt_vid_cap (struct file*,void*,struct v4l2_format*) ;

__attribute__((used)) static int vidioc_s_std(struct file *file, void *priv, v4l2_std_id *norm)
{
 struct em28xx_fh *fh = priv;
 struct em28xx *dev = fh->dev;
 struct v4l2_format f;
 int rc;

 rc = check_dev(dev);
 if (rc < 0)
  return rc;

 dev->norm = *norm;


 f.fmt.pix.width = dev->width;
 f.fmt.pix.height = dev->height;
 vidioc_try_fmt_vid_cap(file, priv, &f);


 dev->width = f.fmt.pix.width;
 dev->height = f.fmt.pix.height;
 get_scale(dev, dev->width, dev->height, &dev->hscale, &dev->vscale);

 em28xx_resolution_set(dev);
 v4l2_device_call_all(&dev->v4l2_dev, 0, core, s_std, dev->norm);

 return 0;
}
