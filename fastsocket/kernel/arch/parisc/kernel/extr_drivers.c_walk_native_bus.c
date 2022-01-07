
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parisc_device {int dummy; } ;
struct hardware_path {int mod; } ;
struct device {int dummy; } ;


 int MAX_NATIVE_DEVICES ;
 scalar_t__ NATIVE_DEVICE_OFFSET ;
 struct parisc_device* alloc_pa_dev (unsigned long,struct hardware_path*) ;
 struct parisc_device* find_device_by_addr (unsigned long) ;
 int get_node_path (struct device*,struct hardware_path*) ;
 int register_parisc_device (struct parisc_device*) ;
 int walk_lower_bus (struct parisc_device*) ;

__attribute__((used)) static void walk_native_bus(unsigned long io_io_low, unsigned long io_io_high,
                            struct device *parent)
{
 int i, devices_found = 0;
 unsigned long hpa = io_io_low;
 struct hardware_path path;

 get_node_path(parent, &path);
 do {
  for(i = 0; i < MAX_NATIVE_DEVICES; i++, hpa += NATIVE_DEVICE_OFFSET) {
   struct parisc_device *dev;


   dev = find_device_by_addr(hpa);
   if (!dev) {
    path.mod = i;
    dev = alloc_pa_dev(hpa, &path);
    if (!dev)
     continue;

    register_parisc_device(dev);
    devices_found++;
   }
   walk_lower_bus(dev);
  }
 } while(!devices_found && hpa < io_io_high);
}
