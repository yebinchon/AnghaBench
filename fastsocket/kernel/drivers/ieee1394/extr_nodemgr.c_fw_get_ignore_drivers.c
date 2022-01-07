
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bus_type {int dummy; } ;
typedef int ssize_t ;


 int ignore_drivers ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t fw_get_ignore_drivers(struct bus_type *bus, char *buf)
{
 return sprintf(buf, "%d\n", ignore_drivers);
}
