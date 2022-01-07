
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_rect {int height; int width; scalar_t__ top; scalar_t__ left; } ;
struct v4l2_pix_format {unsigned int width; unsigned int height; int colorspace; int pixelformat; } ;
struct TYPE_5__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {int type; TYPE_2__ fmt; } ;
struct v4l2_crop {struct v4l2_rect c; } ;
struct soc_camera_host {struct sh_mobile_ceu_dev* priv; } ;
struct TYPE_4__ {struct device* parent; } ;
struct soc_camera_device {unsigned int user_width; unsigned int user_height; TYPE_1__ dev; struct sh_mobile_ceu_cam* host_priv; } ;
struct sh_mobile_ceu_dev {int cflcr; scalar_t__ active; int is_interlaced; scalar_t__ image_mode; } ;
struct sh_mobile_ceu_cam {TYPE_3__* camera_fmt; struct v4l2_rect ceu_rect; } ;
struct device {int dummy; } ;
struct TYPE_6__ {int colorspace; int fourcc; } ;


 int CFLCR ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 unsigned int calc_scale (int ,unsigned int*) ;
 int capture_restore (struct sh_mobile_ceu_dev*,int) ;
 int capture_save_reset (struct sh_mobile_ceu_dev*) ;
 int ceu_write (struct sh_mobile_ceu_dev*,int ,int) ;
 int client_s_crop (struct v4l2_subdev*,struct v4l2_crop*,struct v4l2_crop*) ;
 int client_scale (struct soc_camera_device*,struct v4l2_rect*,struct v4l2_rect*,struct v4l2_rect*,struct v4l2_format*,int) ;
 int dev_dbg (struct device*,char*,int,int) ;
 int dev_geo (struct device*,char*,unsigned int,...) ;
 int get_scales (struct soc_camera_device*,unsigned int*,unsigned int*) ;
 void* scale_down (int ,unsigned int) ;
 int sh_mobile_ceu_set_rect (struct soc_camera_device*,unsigned int,unsigned int) ;
 struct v4l2_subdev* soc_camera_to_subdev (struct soc_camera_device*) ;
 struct soc_camera_host* to_soc_camera_host (struct device*) ;

__attribute__((used)) static int sh_mobile_ceu_set_crop(struct soc_camera_device *icd,
      struct v4l2_crop *a)
{
 struct v4l2_rect *rect = &a->c;
 struct soc_camera_host *ici = to_soc_camera_host(icd->dev.parent);
 struct sh_mobile_ceu_dev *pcdev = ici->priv;
 struct v4l2_crop cam_crop;
 struct sh_mobile_ceu_cam *cam = icd->host_priv;
 struct v4l2_rect *cam_rect = &cam_crop.c, *ceu_rect = &cam->ceu_rect;
 struct v4l2_subdev *sd = soc_camera_to_subdev(icd);
 struct device *dev = icd->dev.parent;
 struct v4l2_format f;
 struct v4l2_pix_format *pix = &f.fmt.pix;
 unsigned int scale_comb_h, scale_comb_v, scale_ceu_h, scale_ceu_v,
  out_width, out_height;
 u32 capsr, cflcr;
 int ret;


 ret = get_scales(icd, &scale_comb_h, &scale_comb_v);
 if (ret < 0)
  return ret;

 dev_geo(dev, "1: combined scales %u:%u\n", scale_comb_h, scale_comb_v);


 ret = client_s_crop(sd, a, &cam_crop);
 if (ret < 0)
  return ret;

 dev_geo(dev, "2: camera cropped to %ux%u@%u:%u\n",
  cam_rect->width, cam_rect->height,
  cam_rect->left, cam_rect->top);







 out_width = scale_down(rect->width, scale_comb_h);
 out_height = scale_down(rect->height, scale_comb_v);

 if (out_width > 2560)
  out_width = 2560;
 else if (out_width < 2)
  out_width = 2;

 if (out_height > 1920)
  out_height = 1920;
 else if (out_height < 4)
  out_height = 4;

 dev_geo(dev, "3: Adjusted output %ux%u\n", out_width, out_height);







 pix->width = scale_down(cam_rect->width, scale_comb_h);
 pix->height = scale_down(cam_rect->height, scale_comb_v);

 dev_geo(dev, "5: camera target %ux%u\n", pix->width, pix->height);


 pix->pixelformat = cam->camera_fmt->fourcc;
 pix->colorspace = cam->camera_fmt->colorspace;

 capsr = capture_save_reset(pcdev);
 dev_dbg(dev, "CAPSR 0x%x, CFLCR 0x%x\n", capsr, pcdev->cflcr);


 rect->left -= cam_rect->left;
 rect->top -= cam_rect->top;

 f.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;

 ret = client_scale(icd, cam_rect, rect, ceu_rect, &f,
      pcdev->image_mode && !pcdev->is_interlaced);

 dev_geo(dev, "6-9: %d\n", ret);


 sh_mobile_ceu_set_rect(icd, out_width, out_height);

 dev_geo(dev, "10: CEU cropped to %ux%u@%u:%u\n",
  ceu_rect->width, ceu_rect->height,
  ceu_rect->left, ceu_rect->top);





 scale_ceu_h = calc_scale(ceu_rect->width, &out_width);
 scale_ceu_v = calc_scale(ceu_rect->height, &out_height);

 dev_geo(dev, "11: CEU scales %u:%u\n", scale_ceu_h, scale_ceu_v);


 cflcr = scale_ceu_h | (scale_ceu_v << 16);
 if (cflcr != pcdev->cflcr) {
  pcdev->cflcr = cflcr;
  ceu_write(pcdev, CFLCR, cflcr);
 }


 if (pcdev->active)
  capsr |= 1;
 capture_restore(pcdev, capsr);

 icd->user_width = out_width;
 icd->user_height = out_height;


 return ret;
}
