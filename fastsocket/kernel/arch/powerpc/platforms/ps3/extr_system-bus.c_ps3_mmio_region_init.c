
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps3_system_bus_device {int dev_type; } ;
struct ps3_mmio_region {unsigned long bus_addr; unsigned long len; int page_size; int * mmio_ops; struct ps3_system_bus_device* dev; } ;
typedef enum ps3_mmio_page_size { ____Placeholder_ps3_mmio_page_size } ps3_mmio_page_size ;


 int BUG () ;
 int EINVAL ;


 int ps3_mmio_ioc0_region_ops ;
 int ps3_mmio_sb_region_ops ;

int ps3_mmio_region_init(struct ps3_system_bus_device *dev,
 struct ps3_mmio_region *r, unsigned long bus_addr, unsigned long len,
 enum ps3_mmio_page_size page_size)
{
 r->dev = dev;
 r->bus_addr = bus_addr;
 r->len = len;
 r->page_size = page_size;
 switch (dev->dev_type) {
 case 128:
  r->mmio_ops = &ps3_mmio_sb_region_ops;
  break;
 case 129:
  r->mmio_ops = &ps3_mmio_ioc0_region_ops;
  break;
 default:
  BUG();
  return -EINVAL;
 }
 return 0;
}
