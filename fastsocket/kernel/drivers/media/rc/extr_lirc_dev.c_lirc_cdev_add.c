
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lirc_driver {size_t minor; int owner; int * fops; } ;
struct irctl {struct lirc_driver d; } ;
struct cdev {int kobj; int owner; } ;


 int MAJOR (int ) ;
 int MKDEV (int ,size_t) ;
 int THIS_MODULE ;
 int cdev_add (struct cdev*,int ,int) ;
 int cdev_init (struct cdev*,int *) ;
 struct cdev* cdevs ;
 int kobject_put (int *) ;
 int kobject_set_name (int *,char*,size_t) ;
 int lirc_base_dev ;
 int lirc_dev_fops ;

__attribute__((used)) static int lirc_cdev_add(struct irctl *ir)
{
 int retval;
 struct lirc_driver *d = &ir->d;
 struct cdev *cdev = &cdevs[d->minor];

 if (d->fops) {
  cdev_init(cdev, d->fops);
  cdev->owner = d->owner;
 } else {
  cdev_init(cdev, &lirc_dev_fops);
  cdev->owner = THIS_MODULE;
 }
 retval = kobject_set_name(&cdev->kobj, "lirc%d", d->minor);
 if (retval)
  return retval;

 retval = cdev_add(cdev, MKDEV(MAJOR(lirc_base_dev), d->minor), 1);
 if (retval)
  kobject_put(&cdev->kobj);

 return retval;
}
