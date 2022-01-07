
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
typedef int ssize_t ;


 int ipw_debug_level ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_debug_level(struct device_driver *d, char *buf)
{
 return sprintf(buf, "0x%08X\n", ipw_debug_level);
}
