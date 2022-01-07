
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_2__ {int dpms_property; } ;
struct drm_device {TYPE_1__ mode_config; } ;
struct drm_connector {int base; struct drm_device* dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 char* drm_get_dpms_name (int) ;
 int drm_object_property_get_value (int *,int ,scalar_t__*) ;
 int snprintf (char*,int ,char*,char*) ;
 struct drm_connector* to_drm_connector (struct device*) ;

__attribute__((used)) static ssize_t dpms_show(struct device *device,
      struct device_attribute *attr,
      char *buf)
{
 struct drm_connector *connector = to_drm_connector(device);
 struct drm_device *dev = connector->dev;
 uint64_t dpms_status;
 int ret;

 ret = drm_object_property_get_value(&connector->base,
         dev->mode_config.dpms_property,
         &dpms_status);
 if (ret)
  return 0;

 return snprintf(buf, PAGE_SIZE, "%s\n",
   drm_get_dpms_name((int)dpms_status));
}
