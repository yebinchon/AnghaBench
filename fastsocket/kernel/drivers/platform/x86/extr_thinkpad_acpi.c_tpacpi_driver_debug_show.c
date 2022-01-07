
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int dbg_level ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t tpacpi_driver_debug_show(struct device_driver *drv,
      char *buf)
{
 return snprintf(buf, PAGE_SIZE, "0x%04x\n", dbg_level);
}
