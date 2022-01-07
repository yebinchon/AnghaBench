
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct pvr2_sysfs {TYPE_1__* class_dev; int attr_unit_number; scalar_t__ unit_number_created_ok; int attr_v4l_radio_minor_number; scalar_t__ v4l_radio_minor_number_created_ok; int attr_v4l_minor_number; scalar_t__ v4l_minor_number_created_ok; int attr_bus_info; scalar_t__ bus_info_created_ok; int attr_hdw_name; scalar_t__ hdw_name_created_ok; int attr_hdw_desc; scalar_t__ hdw_desc_created_ok; } ;
struct device {int dummy; } ;
struct TYPE_5__ {struct device* parent; } ;


 int dev_set_drvdata (TYPE_1__*,int *) ;
 int device_remove_file (TYPE_1__*,int *) ;
 int device_unregister (TYPE_1__*) ;
 int put_device (struct device*) ;
 int pvr2_sysfs_tear_down_controls (struct pvr2_sysfs*) ;
 int pvr2_sysfs_tear_down_debugifc (struct pvr2_sysfs*) ;
 int pvr2_sysfs_trace (char*,TYPE_1__*) ;

__attribute__((used)) static void class_dev_destroy(struct pvr2_sysfs *sfp)
{
 struct device *dev;
 if (!sfp->class_dev) return;



 pvr2_sysfs_tear_down_controls(sfp);
 if (sfp->hdw_desc_created_ok) {
  device_remove_file(sfp->class_dev,
       &sfp->attr_hdw_desc);
 }
 if (sfp->hdw_name_created_ok) {
  device_remove_file(sfp->class_dev,
       &sfp->attr_hdw_name);
 }
 if (sfp->bus_info_created_ok) {
  device_remove_file(sfp->class_dev,
      &sfp->attr_bus_info);
 }
 if (sfp->v4l_minor_number_created_ok) {
  device_remove_file(sfp->class_dev,
      &sfp->attr_v4l_minor_number);
 }
 if (sfp->v4l_radio_minor_number_created_ok) {
  device_remove_file(sfp->class_dev,
      &sfp->attr_v4l_radio_minor_number);
 }
 if (sfp->unit_number_created_ok) {
  device_remove_file(sfp->class_dev,
      &sfp->attr_unit_number);
 }
 pvr2_sysfs_trace("Destroying class_dev id=%p",sfp->class_dev);
 dev_set_drvdata(sfp->class_dev, ((void*)0));
 dev = sfp->class_dev->parent;
 sfp->class_dev->parent = ((void*)0);
 put_device(dev);
 device_unregister(sfp->class_dev);
 sfp->class_dev = ((void*)0);
}
