
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_connector {TYPE_2__* dev; TYPE_3__* funcs; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;
struct TYPE_6__ {int (* detect ) (struct drm_connector*,int) ;} ;
struct TYPE_4__ {int mutex; } ;
struct TYPE_5__ {TYPE_1__ mode_config; } ;


 int PAGE_SIZE ;
 char* drm_get_connector_status_name (int) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int snprintf (char*,int ,char*,char*) ;
 int stub1 (struct drm_connector*,int) ;
 struct drm_connector* to_drm_connector (struct device*) ;

__attribute__((used)) static ssize_t status_show(struct device *device,
      struct device_attribute *attr,
      char *buf)
{
 struct drm_connector *connector = to_drm_connector(device);
 enum drm_connector_status status;
 int ret;

 ret = mutex_lock_interruptible(&connector->dev->mode_config.mutex);
 if (ret)
  return ret;

 status = connector->funcs->detect(connector, 1);
 mutex_unlock(&connector->dev->mode_config.mutex);

 return snprintf(buf, PAGE_SIZE, "%s\n",
   drm_get_connector_status_name(status));
}
