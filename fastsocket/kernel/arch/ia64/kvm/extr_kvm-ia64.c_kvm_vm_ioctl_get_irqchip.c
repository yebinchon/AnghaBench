
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ioapic; } ;
struct kvm_irqchip {int chip_id; TYPE_1__ chip; } ;
struct kvm {int dummy; } ;


 int EINVAL ;

 int kvm_get_ioapic (struct kvm*,int *) ;

__attribute__((used)) static int kvm_vm_ioctl_get_irqchip(struct kvm *kvm,
     struct kvm_irqchip *chip)
{
 int r;

 r = 0;
 switch (chip->chip_id) {
 case 128:
  r = kvm_get_ioapic(kvm, &chip->chip.ioapic);
  break;
 default:
  r = -EINVAL;
  break;
 }
 return r;
}
