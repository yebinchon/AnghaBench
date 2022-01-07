
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lguest_device_desc {scalar_t__ type; } ;


 unsigned int PAGE_SIZE ;
 int add_lguest_device (struct lguest_device_desc*,unsigned int) ;
 scalar_t__ desc_size (struct lguest_device_desc*) ;
 struct lguest_device_desc* lguest_devices ;
 int printk (char*,unsigned int,scalar_t__) ;

__attribute__((used)) static void scan_devices(void)
{
 unsigned int i;
 struct lguest_device_desc *d;


 for (i = 0; i < PAGE_SIZE; i += desc_size(d)) {
  d = lguest_devices + i;


  if (d->type == 0)
   break;

  printk("Device at %i has size %u\n", i, desc_size(d));
  add_lguest_device(d, i);
 }
}
