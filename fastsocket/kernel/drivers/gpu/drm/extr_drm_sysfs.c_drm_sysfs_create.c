
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;
struct class {int devnode; int resume; int suspend; } ;


 struct class* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct class*) ;
 int PTR_ERR (struct class*) ;
 int class_attr_version ;
 struct class* class_create (struct module*,char*) ;
 int class_create_file (struct class*,int *) ;
 int class_destroy (struct class*) ;
 int drm_class_resume ;
 int drm_class_suspend ;
 int drm_devnode ;

struct class *drm_sysfs_create(struct module *owner, char *name)
{
 struct class *class;
 int err;

 class = class_create(owner, name);
 if (IS_ERR(class)) {
  err = PTR_ERR(class);
  goto err_out;
 }

 class->suspend = drm_class_suspend;
 class->resume = drm_class_resume;

 err = class_create_file(class, &class_attr_version);
 if (err)
  goto err_out_class;

 class->devnode = drm_devnode;

 return class;

err_out_class:
 class_destroy(class);
err_out:
 return ERR_PTR(err);
}
