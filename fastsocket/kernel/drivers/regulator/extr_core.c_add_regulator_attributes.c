
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_ops {scalar_t__ set_suspend_mode; scalar_t__ set_suspend_voltage; scalar_t__ set_suspend_disable; scalar_t__ set_suspend_enable; scalar_t__ set_current_limit; scalar_t__ set_voltage; scalar_t__ get_status; scalar_t__ is_enabled; scalar_t__ get_mode; scalar_t__ get_current_limit; scalar_t__ get_voltage; } ;
struct device {int dummy; } ;
struct regulator_dev {int constraints; TYPE_1__* desc; struct device dev; } ;
struct TYPE_2__ {scalar_t__ type; struct regulator_ops* ops; } ;


 scalar_t__ REGULATOR_CURRENT ;
 int dev_attr_max_microamps ;
 int dev_attr_max_microvolts ;
 int dev_attr_microamps ;
 int dev_attr_microvolts ;
 int dev_attr_min_microamps ;
 int dev_attr_min_microvolts ;
 int dev_attr_opmode ;
 int dev_attr_requested_microamps ;
 int dev_attr_state ;
 int dev_attr_status ;
 int dev_attr_suspend_disk_microvolts ;
 int dev_attr_suspend_disk_mode ;
 int dev_attr_suspend_disk_state ;
 int dev_attr_suspend_mem_microvolts ;
 int dev_attr_suspend_mem_mode ;
 int dev_attr_suspend_mem_state ;
 int dev_attr_suspend_standby_microvolts ;
 int dev_attr_suspend_standby_mode ;
 int dev_attr_suspend_standby_state ;
 int device_create_file (struct device*,int *) ;

__attribute__((used)) static int add_regulator_attributes(struct regulator_dev *rdev)
{
 struct device *dev = &rdev->dev;
 struct regulator_ops *ops = rdev->desc->ops;
 int status = 0;


 if (ops->get_voltage) {
  status = device_create_file(dev, &dev_attr_microvolts);
  if (status < 0)
   return status;
 }
 if (ops->get_current_limit) {
  status = device_create_file(dev, &dev_attr_microamps);
  if (status < 0)
   return status;
 }
 if (ops->get_mode) {
  status = device_create_file(dev, &dev_attr_opmode);
  if (status < 0)
   return status;
 }
 if (ops->is_enabled) {
  status = device_create_file(dev, &dev_attr_state);
  if (status < 0)
   return status;
 }
 if (ops->get_status) {
  status = device_create_file(dev, &dev_attr_status);
  if (status < 0)
   return status;
 }


 if (rdev->desc->type == REGULATOR_CURRENT) {
  status = device_create_file(dev, &dev_attr_requested_microamps);
  if (status < 0)
   return status;
 }





 if (!rdev->constraints)
  return status;


 if (ops->set_voltage) {
  status = device_create_file(dev, &dev_attr_min_microvolts);
  if (status < 0)
   return status;
  status = device_create_file(dev, &dev_attr_max_microvolts);
  if (status < 0)
   return status;
 }
 if (ops->set_current_limit) {
  status = device_create_file(dev, &dev_attr_min_microamps);
  if (status < 0)
   return status;
  status = device_create_file(dev, &dev_attr_max_microamps);
  if (status < 0)
   return status;
 }


 if (!(ops->set_suspend_enable && ops->set_suspend_disable))
  return status;

 status = device_create_file(dev, &dev_attr_suspend_standby_state);
 if (status < 0)
  return status;
 status = device_create_file(dev, &dev_attr_suspend_mem_state);
 if (status < 0)
  return status;
 status = device_create_file(dev, &dev_attr_suspend_disk_state);
 if (status < 0)
  return status;

 if (ops->set_suspend_voltage) {
  status = device_create_file(dev,
    &dev_attr_suspend_standby_microvolts);
  if (status < 0)
   return status;
  status = device_create_file(dev,
    &dev_attr_suspend_mem_microvolts);
  if (status < 0)
   return status;
  status = device_create_file(dev,
    &dev_attr_suspend_disk_microvolts);
  if (status < 0)
   return status;
 }

 if (ops->set_suspend_mode) {
  status = device_create_file(dev,
    &dev_attr_suspend_standby_mode);
  if (status < 0)
   return status;
  status = device_create_file(dev,
    &dev_attr_suspend_mem_mode);
  if (status < 0)
   return status;
  status = device_create_file(dev,
    &dev_attr_suspend_disk_mode);
  if (status < 0)
   return status;
 }

 return status;
}
