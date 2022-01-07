
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct soc_camera_format_xlate {int buswidth; TYPE_2__* cam_fmt; TYPE_2__* host_fmt; } ;
struct TYPE_4__ {struct device* parent; } ;
struct soc_camera_device {TYPE_2__* formats; struct sh_mobile_ceu_cam* host_priv; TYPE_1__ dev; } ;
struct sh_mobile_ceu_cam {int * extra_fmt; } ;
struct device {int dummy; } ;
struct TYPE_5__ {int fourcc; int name; int depth; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int ENOMEM ;
 int GFP_KERNEL ;




 int dev_dbg (struct device*,char*,int ,...) ;
 struct sh_mobile_ceu_cam* kzalloc (int,int ) ;
 TYPE_2__* sh_mobile_ceu_formats ;
 int sh_mobile_ceu_try_bus_param (struct soc_camera_device*) ;

__attribute__((used)) static int sh_mobile_ceu_get_formats(struct soc_camera_device *icd, int idx,
         struct soc_camera_format_xlate *xlate)
{
 struct device *dev = icd->dev.parent;
 int ret, k, n;
 int formats = 0;
 struct sh_mobile_ceu_cam *cam;

 ret = sh_mobile_ceu_try_bus_param(icd);
 if (ret < 0)
  return 0;

 if (!icd->host_priv) {
  cam = kzalloc(sizeof(*cam), GFP_KERNEL);
  if (!cam)
   return -ENOMEM;

  icd->host_priv = cam;
 } else {
  cam = icd->host_priv;
 }


 if (!idx)
  cam->extra_fmt = ((void*)0);

 switch (icd->formats[idx].fourcc) {
 case 131:
 case 130:
 case 129:
 case 128:
  if (cam->extra_fmt)
   goto add_single_format;
  cam->extra_fmt = (void *)sh_mobile_ceu_formats;

  n = ARRAY_SIZE(sh_mobile_ceu_formats);
  formats += n;
  for (k = 0; xlate && k < n; k++) {
   xlate->host_fmt = &sh_mobile_ceu_formats[k];
   xlate->cam_fmt = icd->formats + idx;
   xlate->buswidth = icd->formats[idx].depth;
   xlate++;
   dev_dbg(dev, "Providing format %s using %s\n",
    sh_mobile_ceu_formats[k].name,
    icd->formats[idx].name);
  }
 default:
add_single_format:

  formats++;
  if (xlate) {
   xlate->host_fmt = icd->formats + idx;
   xlate->cam_fmt = icd->formats + idx;
   xlate->buswidth = icd->formats[idx].depth;
   xlate++;
   dev_dbg(dev,
    "Providing format %s in pass-through mode\n",
    icd->formats[idx].name);
  }
 }

 return formats;
}
