
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwc_device {int snapshot_button_status; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct pwc_device* cd_to_pwc (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_snapshot_button_status(struct device *class_dev,
        struct device_attribute *attr, char *buf)
{
 struct pwc_device *pdev = cd_to_pwc(class_dev);
 int status = pdev->snapshot_button_status;
 pdev->snapshot_button_status = 0;
 return sprintf(buf, "%d\n", status);
}
