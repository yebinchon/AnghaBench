
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct cdev {int dummy; } ;


 int cleanup_cdev (struct cdev**,struct device**) ;

void ipath_cdev_cleanup(struct cdev **cdevp,
   struct device **devp)
{
 cleanup_cdev(cdevp, devp);
}
