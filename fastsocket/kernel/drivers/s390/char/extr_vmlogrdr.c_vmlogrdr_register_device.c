
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmlogrdr_priv_t {struct device* device; int * class_device; int minor_num; int internal_name; } ;
struct device {void (* release ) (struct device*) ;int kobj; int * driver; int parent; int * bus; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int *) ;
 int MKDEV (int ,int ) ;
 int PTR_ERR (int *) ;
 int dev_name (struct device*) ;
 int dev_set_drvdata (struct device*,struct vmlogrdr_priv_t*) ;
 int dev_set_name (struct device*,int ) ;
 int * device_create (int ,struct device*,int ,struct vmlogrdr_priv_t*,char*,int ) ;
 int device_register (struct device*) ;
 int device_unregister (struct device*) ;
 int iucv_bus ;
 int iucv_root ;
 scalar_t__ kfree ;
 struct device* kzalloc (int,int ) ;
 int put_device (struct device*) ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;
 int vmlogrdr_attr_group ;
 int vmlogrdr_class ;
 int vmlogrdr_driver ;
 int vmlogrdr_major ;

__attribute__((used)) static int vmlogrdr_register_device(struct vmlogrdr_priv_t *priv)
{
 struct device *dev;
 int ret;

 dev = kzalloc(sizeof(struct device), GFP_KERNEL);
 if (dev) {
  dev_set_name(dev, priv->internal_name);
  dev->bus = &iucv_bus;
  dev->parent = iucv_root;
  dev->driver = &vmlogrdr_driver;
  dev_set_drvdata(dev, priv);







  dev->release = (void (*)(struct device *))kfree;
 } else
  return -ENOMEM;
 ret = device_register(dev);
 if (ret) {
  put_device(dev);
  return ret;
 }

 ret = sysfs_create_group(&dev->kobj, &vmlogrdr_attr_group);
 if (ret) {
  device_unregister(dev);
  return ret;
 }
 priv->class_device = device_create(vmlogrdr_class, dev,
        MKDEV(vmlogrdr_major,
       priv->minor_num),
        priv, "%s", dev_name(dev));
 if (IS_ERR(priv->class_device)) {
  ret = PTR_ERR(priv->class_device);
  priv->class_device=((void*)0);
  sysfs_remove_group(&dev->kobj, &vmlogrdr_attr_group);
  device_unregister(dev);
  return ret;
 }
 priv->device = dev;
 return 0;
}
