
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct unit_directory {int flags; scalar_t__ model_name_kv; scalar_t__ vendor_name_kv; struct device device; } ;


 int ARRAY_SIZE (int **) ;
 int HPSB_ERR (char*) ;
 int UNIT_DIRECTORY_MODEL_ID ;
 int UNIT_DIRECTORY_SPECIFIER_ID ;
 int UNIT_DIRECTORY_VENDOR_ID ;
 int UNIT_DIRECTORY_VERSION ;
 int dev_attr_ud_model_id ;
 int dev_attr_ud_model_name_kv ;
 int dev_attr_ud_specifier_id ;
 int dev_attr_ud_vendor_id ;
 int dev_attr_ud_vendor_name_kv ;
 int dev_attr_ud_version ;
 scalar_t__ device_create_file (struct device*,int *) ;
 int ** fw_ud_attrs ;

__attribute__((used)) static void nodemgr_create_ud_dev_files(struct unit_directory *ud)
{
 struct device *dev = &ud->device;
 int i;

 for (i = 0; i < ARRAY_SIZE(fw_ud_attrs); i++)
  if (device_create_file(dev, fw_ud_attrs[i]))
   goto fail;
 if (ud->flags & UNIT_DIRECTORY_SPECIFIER_ID)
  if (device_create_file(dev, &dev_attr_ud_specifier_id))
   goto fail;
 if (ud->flags & UNIT_DIRECTORY_VERSION)
  if (device_create_file(dev, &dev_attr_ud_version))
   goto fail;
 if (ud->flags & UNIT_DIRECTORY_VENDOR_ID) {
  if (device_create_file(dev, &dev_attr_ud_vendor_id))
   goto fail;
  if (ud->vendor_name_kv &&
      device_create_file(dev, &dev_attr_ud_vendor_name_kv))
   goto fail;
 }
 if (ud->flags & UNIT_DIRECTORY_MODEL_ID) {
  if (device_create_file(dev, &dev_attr_ud_model_id))
   goto fail;
  if (ud->model_name_kv &&
      device_create_file(dev, &dev_attr_ud_model_name_kv))
   goto fail;
 }
 return;
fail:
 HPSB_ERR("Failed to add sysfs attribute");
}
