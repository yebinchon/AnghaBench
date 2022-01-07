
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct soc_camera_format_xlate {TYPE_1__* host_fmt; } ;
struct soc_camera_device {unsigned int num_user_formats; struct soc_camera_format_xlate const* user_formats; } ;
struct TYPE_2__ {unsigned int fourcc; } ;



const struct soc_camera_format_xlate *soc_camera_xlate_by_fourcc(
 struct soc_camera_device *icd, unsigned int fourcc)
{
 unsigned int i;

 for (i = 0; i < icd->num_user_formats; i++)
  if (icd->user_formats[i].host_fmt->fourcc == fourcc)
   return icd->user_formats + i;
 return ((void*)0);
}
