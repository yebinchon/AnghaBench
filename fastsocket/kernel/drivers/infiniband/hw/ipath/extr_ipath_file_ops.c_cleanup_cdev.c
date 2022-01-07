
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct cdev {int dummy; } ;


 int cdev_del (struct cdev*) ;
 int device_unregister (struct device*) ;

__attribute__((used)) static void cleanup_cdev(struct cdev **cdevp,
    struct device **devp)
{
 struct device *dev = *devp;

 if (dev) {
  device_unregister(dev);
  *devp = ((void*)0);
 }

 if (*cdevp) {
  cdev_del(*cdevp);
  *cdevp = ((void*)0);
 }
}
