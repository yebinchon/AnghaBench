
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct soc_camera_host {int dummy; } ;
struct soc_camera_format_xlate {int buswidth; TYPE_2__* cam_fmt; TYPE_2__* host_fmt; } ;
struct TYPE_3__ {int parent; } ;
struct soc_camera_device {TYPE_2__* formats; TYPE_1__ dev; } ;
struct TYPE_4__ {int depth; int fourcc; int name; } ;




 int buswidth_supported (struct soc_camera_host*,int) ;
 int dev_dbg (int ,char*,int ,...) ;
 TYPE_2__* mx3_camera_formats ;
 int mx3_camera_try_bus_param (struct soc_camera_device*,int) ;
 struct soc_camera_host* to_soc_camera_host (int ) ;

__attribute__((used)) static int mx3_camera_get_formats(struct soc_camera_device *icd, int idx,
      struct soc_camera_format_xlate *xlate)
{
 struct soc_camera_host *ici = to_soc_camera_host(icd->dev.parent);
 int formats = 0, buswidth, ret;

 buswidth = icd->formats[idx].depth;

 if (!buswidth_supported(ici, buswidth))
  return 0;

 ret = mx3_camera_try_bus_param(icd, buswidth);
 if (ret < 0)
  return 0;

 switch (icd->formats[idx].fourcc) {
 case 129:
  formats++;
  if (xlate) {
   xlate->host_fmt = &mx3_camera_formats[0];
   xlate->cam_fmt = icd->formats + idx;
   xlate->buswidth = buswidth;
   xlate++;
   dev_dbg(icd->dev.parent,
    "Providing format %s using %s\n",
    mx3_camera_formats[0].name,
    icd->formats[idx].name);
  }
  goto passthrough;
 case 128:
  formats++;
  if (xlate) {
   xlate->host_fmt = &mx3_camera_formats[1];
   xlate->cam_fmt = icd->formats + idx;
   xlate->buswidth = buswidth;
   xlate++;
   dev_dbg(icd->dev.parent,
    "Providing format %s using %s\n",
    mx3_camera_formats[0].name,
    icd->formats[idx].name);
  }
 default:
passthrough:

  formats++;
  if (xlate) {
   xlate->host_fmt = icd->formats + idx;
   xlate->cam_fmt = icd->formats + idx;
   xlate->buswidth = buswidth;
   xlate++;
   dev_dbg(icd->dev.parent,
    "Providing format %s in pass-through mode\n",
    icd->formats[idx].name);
  }
 }

 return formats;
}
