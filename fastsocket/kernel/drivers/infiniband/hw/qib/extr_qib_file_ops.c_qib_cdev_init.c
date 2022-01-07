
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_operations {int dummy; } ;
struct device {int dummy; } ;
struct cdev {int kobj; struct file_operations const* ops; int owner; } ;
typedef int dev_t ;


 int ENOMEM ;
 int IS_ERR (struct device*) ;
 int MAJOR (int ) ;
 int MKDEV (int ,int) ;
 int PTR_ERR (struct device*) ;
 int THIS_MODULE ;
 int cdev_add (struct cdev*,int const,int) ;
 struct cdev* cdev_alloc () ;
 int cdev_del (struct cdev*) ;
 struct device* device_create (int ,int *,int const,int *,char const*) ;
 int kobject_set_name (int *,char const*) ;
 int pr_err (char*,int,char const*,...) ;
 int qib_class ;
 int qib_dev ;

int qib_cdev_init(int minor, const char *name,
    const struct file_operations *fops,
    struct cdev **cdevp, struct device **devp)
{
 const dev_t dev = MKDEV(MAJOR(qib_dev), minor);
 struct cdev *cdev;
 struct device *device = ((void*)0);
 int ret;

 cdev = cdev_alloc();
 if (!cdev) {
  pr_err("Could not allocate cdev for minor %d, %s\n",
         minor, name);
  ret = -ENOMEM;
  goto done;
 }

 cdev->owner = THIS_MODULE;
 cdev->ops = fops;
 kobject_set_name(&cdev->kobj, name);

 ret = cdev_add(cdev, dev, 1);
 if (ret < 0) {
  pr_err("Could not add cdev for minor %d, %s (err %d)\n",
         minor, name, -ret);
  goto err_cdev;
 }

 device = device_create(qib_class, ((void*)0), dev, ((void*)0), name);
 if (!IS_ERR(device))
  goto done;
 ret = PTR_ERR(device);
 device = ((void*)0);
 pr_err("Could not create device for minor %d, %s (err %d)\n",
        minor, name, -ret);
err_cdev:
 cdev_del(cdev);
 cdev = ((void*)0);
done:
 *cdevp = cdev;
 *devp = device;
 return ret;
}
