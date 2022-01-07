
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvm_pic_state {int dummy; } ;
struct TYPE_3__ {int ioapic; int pic; } ;
struct kvm_irqchip {int chip_id; TYPE_1__ chip; } ;
struct kvm {int dummy; } ;
struct TYPE_4__ {int * pics; } ;


 int EINVAL ;



 int kvm_get_ioapic (struct kvm*,int *) ;
 int memcpy (int *,int *,int) ;
 TYPE_2__* pic_irqchip (struct kvm*) ;

__attribute__((used)) static int kvm_vm_ioctl_get_irqchip(struct kvm *kvm, struct kvm_irqchip *chip)
{
 int r;

 r = 0;
 switch (chip->chip_id) {
 case 129:
  memcpy(&chip->chip.pic,
   &pic_irqchip(kvm)->pics[0],
   sizeof(struct kvm_pic_state));
  break;
 case 128:
  memcpy(&chip->chip.pic,
   &pic_irqchip(kvm)->pics[1],
   sizeof(struct kvm_pic_state));
  break;
 case 130:
  r = kvm_get_ioapic(kvm, &chip->chip.ioapic);
  break;
 default:
  r = -EINVAL;
  break;
 }
 return r;
}
