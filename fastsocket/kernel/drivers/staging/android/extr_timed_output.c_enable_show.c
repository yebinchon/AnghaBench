
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timed_output_dev {int (* get_time ) (struct timed_output_dev*) ;} ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct timed_output_dev* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;
 int stub1 (struct timed_output_dev*) ;

__attribute__((used)) static ssize_t enable_show(struct device *dev, struct device_attribute *attr,
  char *buf)
{
 struct timed_output_dev *tdev = dev_get_drvdata(dev);
 int remaining = tdev->get_time(tdev);

 return sprintf(buf, "%d\n", remaining);
}
