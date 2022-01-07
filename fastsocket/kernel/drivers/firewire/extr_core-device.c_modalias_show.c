
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_unit {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct fw_unit* fw_unit (struct device*) ;
 int get_modalias (struct fw_unit*,char*,int ) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static ssize_t modalias_show(struct device *dev,
        struct device_attribute *attr, char *buf)
{
 struct fw_unit *unit = fw_unit(dev);
 int length;

 length = get_modalias(unit, buf, PAGE_SIZE);
 strcpy(buf + length, "\n");

 return length + 1;
}
