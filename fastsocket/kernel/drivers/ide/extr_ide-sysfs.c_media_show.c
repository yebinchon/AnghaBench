
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef int ide_drive_t ;


 char* ide_media_string (int *) ;
 int sprintf (char*,char*,char*) ;
 int * to_ide_device (struct device*) ;

__attribute__((used)) static ssize_t media_show(struct device *dev, struct device_attribute *attr,
     char *buf)
{
 ide_drive_t *drive = to_ide_device(dev);
 return sprintf(buf, "%s\n", ide_media_string(drive));
}
