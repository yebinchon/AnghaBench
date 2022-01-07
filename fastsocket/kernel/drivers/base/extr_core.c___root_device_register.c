
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int kobj; int release; } ;
struct root_device {struct device dev; struct module* owner; } ;
struct module_kobject {int kobj; } ;
struct module {struct module_kobject mkobj; } ;


 int ENOMEM ;
 struct device* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int dev_set_name (struct device*,char*,char const*) ;
 int device_register (struct device*) ;
 int device_unregister (struct device*) ;
 int kfree (struct root_device*) ;
 struct root_device* kzalloc (int,int ) ;
 int put_device (struct device*) ;
 int root_device_release ;
 int sysfs_create_link (int *,int *,char*) ;

struct device *__root_device_register(const char *name, struct module *owner)
{
 struct root_device *root;
 int err = -ENOMEM;

 root = kzalloc(sizeof(struct root_device), GFP_KERNEL);
 if (!root)
  return ERR_PTR(err);

 err = dev_set_name(&root->dev, "%s", name);
 if (err) {
  kfree(root);
  return ERR_PTR(err);
 }

 root->dev.release = root_device_release;

 err = device_register(&root->dev);
 if (err) {
  put_device(&root->dev);
  return ERR_PTR(err);
 }
 return &root->dev;
}
