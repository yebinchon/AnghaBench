
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap24xxcam_device {scalar_t__ streaming; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct omap24xxcam_device* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t
omap24xxcam_streaming_show(struct device *dev, struct device_attribute *attr,
  char *buf)
{
 struct omap24xxcam_device *cam = dev_get_drvdata(dev);

 return sprintf(buf, "%s\n", cam->streaming ? "active" : "inactive");
}
