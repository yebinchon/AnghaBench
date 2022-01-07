
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vio_dev {char* type; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,char*) ;
 struct vio_dev* to_vio_dev (struct device*) ;

__attribute__((used)) static ssize_t type_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct vio_dev *vdev = to_vio_dev(dev);
 return sprintf(buf, "%s\n", vdev->type);
}
