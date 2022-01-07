
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct kvm_lapic {scalar_t__ base_address; } ;
struct kvm_io_device {int dummy; } ;
typedef scalar_t__ gpa_t ;


 int EOPNOTSUPP ;
 int apic_mmio_in_range (struct kvm_lapic*,scalar_t__) ;
 int apic_reg_read (struct kvm_lapic*,scalar_t__,int,void*) ;
 struct kvm_lapic* to_lapic (struct kvm_io_device*) ;

__attribute__((used)) static int apic_mmio_read(struct kvm_io_device *this,
      gpa_t address, int len, void *data)
{
 struct kvm_lapic *apic = to_lapic(this);
 u32 offset = address - apic->base_address;

 if (!apic_mmio_in_range(apic, address))
  return -EOPNOTSUPP;

 apic_reg_read(apic, offset, len, data);

 return 0;
}
