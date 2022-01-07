
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 unsigned long dbg_level ;
 scalar_t__ parse_strtoul (char const*,int,unsigned long*) ;

__attribute__((used)) static ssize_t tpacpi_driver_debug_store(struct device_driver *drv,
      const char *buf, size_t count)
{
 unsigned long t;

 if (parse_strtoul(buf, 0xffff, &t))
  return -EINVAL;

 dbg_level = t;

 return count;
}
