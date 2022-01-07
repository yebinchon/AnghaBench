
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwc_device {int pan_angle; int tilt_angle; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct pwc_device* cd_to_pwc (struct device*) ;
 int sprintf (char*,char*,int,int) ;

__attribute__((used)) static ssize_t show_pan_tilt(struct device *class_dev,
        struct device_attribute *attr, char *buf)
{
 struct pwc_device *pdev = cd_to_pwc(class_dev);
 return sprintf(buf, "%d %d\n", pdev->pan_angle, pdev->tilt_angle);
}
