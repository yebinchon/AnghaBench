
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct soc_camera_host {struct sh_mobile_ceu_dev* priv; } ;
struct TYPE_3__ {int parent; } ;
struct soc_camera_device {TYPE_2__* ops; TYPE_1__ dev; } ;
struct sh_mobile_ceu_dev {int dummy; } ;
struct TYPE_4__ {unsigned long (* query_bus_param ) (struct soc_camera_device*) ;} ;


 int EINVAL ;
 int make_bus_param (struct sh_mobile_ceu_dev*) ;
 unsigned long soc_camera_bus_param_compatible (unsigned long,int ) ;
 unsigned long stub1 (struct soc_camera_device*) ;
 struct soc_camera_host* to_soc_camera_host (int ) ;

__attribute__((used)) static int sh_mobile_ceu_try_bus_param(struct soc_camera_device *icd)
{
 struct soc_camera_host *ici = to_soc_camera_host(icd->dev.parent);
 struct sh_mobile_ceu_dev *pcdev = ici->priv;
 unsigned long camera_flags, common_flags;

 camera_flags = icd->ops->query_bus_param(icd);
 common_flags = soc_camera_bus_param_compatible(camera_flags,
             make_bus_param(pcdev));
 if (!common_flags)
  return -EINVAL;

 return 0;
}
