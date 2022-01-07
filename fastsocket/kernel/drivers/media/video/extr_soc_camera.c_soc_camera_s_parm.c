
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_streamparm {int dummy; } ;
struct soc_camera_host {TYPE_2__* ops; } ;
struct TYPE_3__ {int parent; } ;
struct soc_camera_device {TYPE_1__ dev; } ;
struct file {struct soc_camera_device* private_data; } ;
struct TYPE_4__ {int (* set_parm ) (struct soc_camera_device*,struct v4l2_streamparm*) ;} ;


 int ENOIOCTLCMD ;
 int stub1 (struct soc_camera_device*,struct v4l2_streamparm*) ;
 struct soc_camera_host* to_soc_camera_host (int ) ;

__attribute__((used)) static int soc_camera_s_parm(struct file *file, void *fh,
        struct v4l2_streamparm *a)
{
 struct soc_camera_device *icd = file->private_data;
 struct soc_camera_host *ici = to_soc_camera_host(icd->dev.parent);

 if (ici->ops->set_parm)
  return ici->ops->set_parm(icd, a);

 return -ENOIOCTLCMD;
}
