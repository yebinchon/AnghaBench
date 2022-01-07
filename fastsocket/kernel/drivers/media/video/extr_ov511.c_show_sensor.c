
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ov511 {int sensor; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct usb_ov511* cd_to_ov (struct device*) ;
 int senlist ;
 int sprintf (char*,char*,char*) ;
 char* symbolic (int ,int ) ;

__attribute__((used)) static ssize_t show_sensor(struct device *cd,
      struct device_attribute *attr, char *buf)
{
 struct usb_ov511 *ov = cd_to_ov(cd);
 return sprintf(buf, "%s\n", symbolic(senlist, ov->sensor));
}
