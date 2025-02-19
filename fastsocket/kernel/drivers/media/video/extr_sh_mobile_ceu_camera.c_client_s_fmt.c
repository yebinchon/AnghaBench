
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct v4l2_pix_format {unsigned int width; unsigned int height; } ;
struct TYPE_6__ {int width; int height; } ;
struct TYPE_5__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {TYPE_3__ bounds; int type; TYPE_2__ fmt; } ;
struct v4l2_cropcap {TYPE_3__ bounds; int type; TYPE_2__ fmt; } ;
struct TYPE_4__ {struct device* parent; } ;
struct soc_camera_device {TYPE_1__ dev; } ;
struct device {int dummy; } ;


 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int cropcap ;
 int dev_err (struct device*,char*,int) ;
 int dev_geo (struct device*,char*,unsigned int,unsigned int) ;
 unsigned int min (int,unsigned int) ;
 int s_fmt ;
 struct v4l2_subdev* soc_camera_to_subdev (struct soc_camera_device*) ;
 int v4l2_subdev_call (struct v4l2_subdev*,int ,int ,struct v4l2_format*) ;
 int video ;

__attribute__((used)) static int client_s_fmt(struct soc_camera_device *icd, struct v4l2_format *f,
   bool ceu_can_scale)
{
 struct v4l2_subdev *sd = soc_camera_to_subdev(icd);
 struct device *dev = icd->dev.parent;
 struct v4l2_pix_format *pix = &f->fmt.pix;
 unsigned int width = pix->width, height = pix->height, tmp_w, tmp_h;
 unsigned int max_width, max_height;
 struct v4l2_cropcap cap;
 int ret;

 cap.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;

 ret = v4l2_subdev_call(sd, video, cropcap, &cap);
 if (ret < 0)
  return ret;

 max_width = min(cap.bounds.width, 2560);
 max_height = min(cap.bounds.height, 1920);

 ret = v4l2_subdev_call(sd, video, s_fmt, f);
 if (ret < 0)
  return ret;

 dev_geo(dev, "camera scaled to %ux%u\n", pix->width, pix->height);

 if ((width == pix->width && height == pix->height) || !ceu_can_scale)
  return 0;


 tmp_w = pix->width;
 tmp_h = pix->height;


 while ((width > tmp_w || height > tmp_h) &&
        tmp_w < max_width && tmp_h < max_height) {
  tmp_w = min(2 * tmp_w, max_width);
  tmp_h = min(2 * tmp_h, max_height);
  pix->width = tmp_w;
  pix->height = tmp_h;
  ret = v4l2_subdev_call(sd, video, s_fmt, f);
  dev_geo(dev, "Camera scaled to %ux%u\n",
   pix->width, pix->height);
  if (ret < 0) {

   dev_err(dev, "Client failed to set format: %d\n", ret);
   return ret;
  }
 }

 return 0;
}
