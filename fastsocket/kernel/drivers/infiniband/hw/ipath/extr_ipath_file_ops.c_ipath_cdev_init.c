
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_operations {int dummy; } ;
struct device {int dummy; } ;
struct cdev {int dummy; } ;


 int init_cdev (int,char*,struct file_operations const*,struct cdev**,struct device**) ;

int ipath_cdev_init(int minor, char *name, const struct file_operations *fops,
      struct cdev **cdevp, struct device **devp)
{
 return init_cdev(minor, name, fops, cdevp, devp);
}
