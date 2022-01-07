
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timed_output_dev {int (* enable ) (struct timed_output_dev*,int) ;} ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 struct timed_output_dev* dev_get_drvdata (struct device*) ;
 int sscanf (char const*,char*,int*) ;
 int stub1 (struct timed_output_dev*,int) ;

__attribute__((used)) static ssize_t enable_store(
  struct device *dev, struct device_attribute *attr,
  const char *buf, size_t size)
{
 struct timed_output_dev *tdev = dev_get_drvdata(dev);
 int value;

 sscanf(buf, "%d", &value);
 tdev->enable(tdev, value);

 return size;
}
