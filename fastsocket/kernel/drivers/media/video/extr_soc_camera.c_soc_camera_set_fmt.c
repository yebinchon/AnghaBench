
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct v4l2_pix_format {scalar_t__ pixelformat; int field; int colorspace; int height; int width; } ;
struct TYPE_9__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {scalar_t__ type; TYPE_1__ fmt; } ;
struct soc_camera_host {TYPE_5__* ops; } ;
struct TYPE_14__ {int parent; } ;
struct TYPE_12__ {int field; } ;
struct soc_camera_device {int user_height; int user_width; TYPE_6__ dev; int field; TYPE_4__ vb_vidq; int colorspace; TYPE_3__* current_fmt; } ;
struct TYPE_13__ {int (* try_fmt ) (struct soc_camera_device*,struct v4l2_format*) ;int (* set_fmt ) (struct soc_camera_device*,struct v4l2_format*) ;int (* set_bus_param ) (struct soc_camera_device*,scalar_t__) ;} ;
struct TYPE_11__ {TYPE_2__* host_fmt; } ;
struct TYPE_10__ {scalar_t__ fourcc; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int dev_dbg (TYPE_6__*,char*,int ,int ,...) ;
 int dev_err (TYPE_6__*,char*) ;
 int dev_warn (TYPE_6__*,char*,scalar_t__) ;
 int pixfmtstr (scalar_t__) ;
 int stub1 (struct soc_camera_device*,struct v4l2_format*) ;
 int stub2 (struct soc_camera_device*,struct v4l2_format*) ;
 int stub3 (struct soc_camera_device*,scalar_t__) ;
 struct soc_camera_host* to_soc_camera_host (int ) ;

__attribute__((used)) static int soc_camera_set_fmt(struct soc_camera_device *icd,
         struct v4l2_format *f)
{
 struct soc_camera_host *ici = to_soc_camera_host(icd->dev.parent);
 struct v4l2_pix_format *pix = &f->fmt.pix;
 int ret;

 dev_dbg(&icd->dev, "S_FMT(%c%c%c%c, %ux%u)\n",
  pixfmtstr(pix->pixelformat), pix->width, pix->height);


 ret = ici->ops->try_fmt(icd, f);
 if (ret < 0)
  return ret;

 ret = ici->ops->set_fmt(icd, f);
 if (ret < 0) {
  return ret;
 } else if (!icd->current_fmt ||
     icd->current_fmt->host_fmt->fourcc != pix->pixelformat) {
  dev_err(&icd->dev,
   "Host driver hasn't set up current format correctly!\n");
  return -EINVAL;
 }

 icd->user_width = pix->width;
 icd->user_height = pix->height;
 icd->colorspace = pix->colorspace;
 icd->vb_vidq.field =
  icd->field = pix->field;

 if (f->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  dev_warn(&icd->dev, "Attention! Wrong buf-type %d\n",
    f->type);

 dev_dbg(&icd->dev, "set width: %d height: %d\n",
  icd->user_width, icd->user_height);


 return ici->ops->set_bus_param(icd, pix->pixelformat);
}
