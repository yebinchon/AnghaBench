
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int COMPAL_EC_COMMAND_WIRELESS ;
 int ec_read (int ,int*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_raw(struct device *dev,
 struct device_attribute *attr, char *buf)
{
 u8 result;

 ec_read(COMPAL_EC_COMMAND_WIRELESS, &result);

 return sprintf(buf, "%i\n", result);
}
