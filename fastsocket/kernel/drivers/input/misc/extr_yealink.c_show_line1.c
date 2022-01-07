
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int LCD_LINE1_OFFSET ;
 int LCD_LINE2_OFFSET ;
 int show_line (struct device*,char*,int ,int ) ;

__attribute__((used)) static ssize_t show_line1(struct device *dev, struct device_attribute *attr,
   char *buf)
{
 return show_line(dev, buf, LCD_LINE1_OFFSET, LCD_LINE2_OFFSET);
}
