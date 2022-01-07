
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct drm_property {int dummy; } ;
struct TYPE_2__ {struct drm_property* tv_select_subconnector_property; struct drm_property* dvi_i_select_subconnector_property; } ;
struct drm_device {TYPE_1__ mode_config; } ;
struct drm_connector {int connector_type; int base; struct drm_device* dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int DRM_ERROR (char*) ;





 int PAGE_SIZE ;
 char* drm_get_dvi_i_select_name (int) ;
 char* drm_get_tv_select_name (int) ;
 int drm_object_property_get_value (int *,struct drm_property*,scalar_t__*) ;
 int snprintf (char*,int ,char*,char*) ;
 struct drm_connector* to_drm_connector (struct device*) ;

__attribute__((used)) static ssize_t select_subconnector_show(struct device *device,
      struct device_attribute *attr,
      char *buf)
{
 struct drm_connector *connector = to_drm_connector(device);
 struct drm_device *dev = connector->dev;
 struct drm_property *prop = ((void*)0);
 uint64_t subconnector;
 int is_tv = 0;
 int ret;

 switch (connector->connector_type) {
  case 130:
   prop = dev->mode_config.dvi_i_select_subconnector_property;
   break;
  case 131:
  case 129:
  case 132:
  case 128:
   prop = dev->mode_config.tv_select_subconnector_property;
   is_tv = 1;
   break;
  default:
   DRM_ERROR("Wrong connector type for this property\n");
   return 0;
 }

 if (!prop) {
  DRM_ERROR("Unable to find select subconnector property\n");
  return 0;
 }

 ret = drm_object_property_get_value(&connector->base, prop, &subconnector);
 if (ret)
  return 0;

 return snprintf(buf, PAGE_SIZE, "%s", is_tv ?
   drm_get_tv_select_name((int)subconnector) :
   drm_get_dvi_i_select_name((int)subconnector));
}
