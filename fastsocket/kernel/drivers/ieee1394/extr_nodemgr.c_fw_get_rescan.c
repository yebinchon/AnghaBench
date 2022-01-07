
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bus_type {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*) ;

__attribute__((used)) static ssize_t fw_get_rescan(struct bus_type *bus, char *buf)
{
 return sprintf(buf, "You can force a rescan of the bus for "
   "drivers by writing a 1 to this file\n");
}
