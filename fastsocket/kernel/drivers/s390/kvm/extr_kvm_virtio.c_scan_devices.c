
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_device_desc {scalar_t__ type; } ;


 unsigned int PAGE_SIZE ;
 int add_kvm_device (struct kvm_device_desc*,unsigned int) ;
 scalar_t__ desc_size (struct kvm_device_desc*) ;
 struct kvm_device_desc* kvm_devices ;

__attribute__((used)) static void scan_devices(void)
{
 unsigned int i;
 struct kvm_device_desc *d;

 for (i = 0; i < PAGE_SIZE; i += desc_size(d)) {
  d = kvm_devices + i;

  if (d->type == 0)
   break;

  add_kvm_device(d, i);
 }
}
