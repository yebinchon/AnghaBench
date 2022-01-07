
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kvm_pic_state {int dummy; } ;
struct TYPE_4__ {int ioapic; int pic; } ;
struct kvm_irqchip {int chip_id; TYPE_1__ chip; } ;
struct kvm {int dummy; } ;
struct TYPE_5__ {int lock; int * pics; } ;


 int EINVAL ;



 int kvm_pic_update_irq (TYPE_2__*) ;
 int kvm_set_ioapic (struct kvm*,int *) ;
 int memcpy (int *,int *,int) ;
 TYPE_2__* pic_irqchip (struct kvm*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int kvm_vm_ioctl_set_irqchip(struct kvm *kvm, struct kvm_irqchip *chip)
{
 int r;

 r = 0;
 switch (chip->chip_id) {
 case 129:
  spin_lock(&pic_irqchip(kvm)->lock);
  memcpy(&pic_irqchip(kvm)->pics[0],
   &chip->chip.pic,
   sizeof(struct kvm_pic_state));
  spin_unlock(&pic_irqchip(kvm)->lock);
  break;
 case 128:
  spin_lock(&pic_irqchip(kvm)->lock);
  memcpy(&pic_irqchip(kvm)->pics[1],
   &chip->chip.pic,
   sizeof(struct kvm_pic_state));
  spin_unlock(&pic_irqchip(kvm)->lock);
  break;
 case 130:
  r = kvm_set_ioapic(kvm, &chip->chip.ioapic);
  break;
 default:
  r = -EINVAL;
  break;
 }
 kvm_pic_update_irq(pic_irqchip(kvm));
 return r;
}
