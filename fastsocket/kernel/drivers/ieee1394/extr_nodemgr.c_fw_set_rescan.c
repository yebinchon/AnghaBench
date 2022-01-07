
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bus_type {int dummy; } ;
typedef int ssize_t ;


 int bus_rescan_devices (int *) ;
 int ieee1394_bus_type ;
 int simple_strtoul (char const*,int *,int) ;

__attribute__((used)) static ssize_t fw_set_rescan(struct bus_type *bus, const char *buf,
        size_t count)
{
 int error = 0;

 if (simple_strtoul(buf, ((void*)0), 10) == 1)
  error = bus_rescan_devices(&ieee1394_bus_type);
 return error ? error : count;
}
