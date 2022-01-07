
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int dev_t ;
struct TYPE_4__ {int kobj; int dev; int * ops; int owner; } ;


 int ENOMEM ;
 int MAXMINOR ;
 int THIS_MODULE ;
 int cdev_add (TYPE_1__*,int ,int ) ;
 TYPE_1__* cdev_alloc () ;
 int kobject_put (int *) ;
 TYPE_1__* vmlogrdr_cdev ;
 int vmlogrdr_fops ;

__attribute__((used)) static int vmlogrdr_register_cdev(dev_t dev)
{
 int rc = 0;
 vmlogrdr_cdev = cdev_alloc();
 if (!vmlogrdr_cdev) {
  return -ENOMEM;
 }
 vmlogrdr_cdev->owner = THIS_MODULE;
 vmlogrdr_cdev->ops = &vmlogrdr_fops;
 vmlogrdr_cdev->dev = dev;
 rc = cdev_add(vmlogrdr_cdev, vmlogrdr_cdev->dev, MAXMINOR);
 if (!rc)
  return 0;


 kobject_put(&vmlogrdr_cdev->kobj);
 vmlogrdr_cdev=((void*)0);
 return rc;
}
