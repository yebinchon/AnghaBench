
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_crop {int dummy; } ;
struct soc_camera_host {TYPE_2__* ops; } ;
struct TYPE_3__ {int parent; } ;
struct soc_camera_device {TYPE_1__ dev; } ;
struct file {struct soc_camera_device* private_data; } ;
struct TYPE_4__ {int (* get_crop ) (struct soc_camera_device*,struct v4l2_crop*) ;} ;


 int stub1 (struct soc_camera_device*,struct v4l2_crop*) ;
 struct soc_camera_host* to_soc_camera_host (int ) ;

__attribute__((used)) static int soc_camera_g_crop(struct file *file, void *fh,
        struct v4l2_crop *a)
{
 struct soc_camera_device *icd = file->private_data;
 struct soc_camera_host *ici = to_soc_camera_host(icd->dev.parent);
 int ret;

 ret = ici->ops->get_crop(icd, a);

 return ret;
}
