
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vio_dev {struct device_node* dp; } ;
struct device_node {char* full_name; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,char*) ;
 struct vio_dev* to_vio_dev (struct device*) ;

__attribute__((used)) static ssize_t
show_pciobppath_attr(struct device *dev, struct device_attribute *attr,
       char *buf)
{
 struct vio_dev *vdev;
 struct device_node *dp;

 vdev = to_vio_dev(dev);
 dp = vdev->dp;

 return snprintf (buf, PAGE_SIZE, "%s\n", dp->full_name);
}
