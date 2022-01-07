
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vpfe_device {size_t std_index; int initialized; int pdev; int v4l2_dev; scalar_t__ current_input; } ;
struct TYPE_4__ {int (* open ) (int ) ;} ;
struct TYPE_6__ {TYPE_1__ hw_ops; int owner; } ;
struct TYPE_5__ {int std_id; } ;


 int ENODEV ;
 TYPE_3__* ccdc_dev ;
 int ccdc_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (int ) ;
 int try_module_get (int ) ;
 int v4l2_err (int *,char*) ;
 int vpfe_config_image_format (struct vpfe_device*,int *) ;
 TYPE_2__* vpfe_standards ;

__attribute__((used)) static int vpfe_initialize_device(struct vpfe_device *vpfe_dev)
{
 int ret = 0;


 vpfe_dev->current_input = 0;


 vpfe_dev->std_index = 0;


 ret = vpfe_config_image_format(vpfe_dev,
    &vpfe_standards[vpfe_dev->std_index].std_id);
 if (ret)
  return ret;


 mutex_lock(&ccdc_lock);
 if (((void*)0) == ccdc_dev) {
  v4l2_err(&vpfe_dev->v4l2_dev, "ccdc device not registered\n");
  ret = -ENODEV;
  goto unlock;
 }

 if (!try_module_get(ccdc_dev->owner)) {
  v4l2_err(&vpfe_dev->v4l2_dev, "Couldn't lock ccdc module\n");
  ret = -ENODEV;
  goto unlock;
 }
 ret = ccdc_dev->hw_ops.open(vpfe_dev->pdev);
 if (!ret)
  vpfe_dev->initialized = 1;
unlock:
 mutex_unlock(&ccdc_lock);
 return ret;
}
