
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int nr; int soft; scalar_t__ pending; } ;
struct TYPE_9__ {TYPE_3__ interrupt; int shadow_efer; int cr3; int cr2; } ;
struct kvm_vcpu {TYPE_4__ arch; } ;
struct TYPE_7__ {int base; int limit; } ;
struct TYPE_6__ {int base; int limit; } ;
struct kvm_sregs {scalar_t__ interrupt_bitmap; int apic_base; int efer; int cr8; int cr4; int cr3; int cr2; int cr0; TYPE_2__ gdt; TYPE_1__ idt; int ldt; int tr; int ss; int gs; int fs; int es; int ds; int cs; } ;
struct descriptor_table {int base; int limit; } ;
struct TYPE_10__ {int (* get_gdt ) (struct kvm_vcpu*,struct descriptor_table*) ;int (* get_idt ) (struct kvm_vcpu*,struct descriptor_table*) ;} ;


 int VCPU_SREG_CS ;
 int VCPU_SREG_DS ;
 int VCPU_SREG_ES ;
 int VCPU_SREG_FS ;
 int VCPU_SREG_GS ;
 int VCPU_SREG_LDTR ;
 int VCPU_SREG_SS ;
 int VCPU_SREG_TR ;
 int kvm_get_apic_base (struct kvm_vcpu*) ;
 int kvm_get_cr8 (struct kvm_vcpu*) ;
 int kvm_get_segment (struct kvm_vcpu*,int *,int ) ;
 int kvm_read_cr0 (struct kvm_vcpu*) ;
 int kvm_read_cr4 (struct kvm_vcpu*) ;
 TYPE_5__* kvm_x86_ops ;
 int memset (scalar_t__,int ,int) ;
 int set_bit (int ,unsigned long*) ;
 int stub1 (struct kvm_vcpu*,struct descriptor_table*) ;
 int stub2 (struct kvm_vcpu*,struct descriptor_table*) ;
 int vcpu_load (struct kvm_vcpu*) ;
 int vcpu_put (struct kvm_vcpu*) ;

int kvm_arch_vcpu_ioctl_get_sregs(struct kvm_vcpu *vcpu,
      struct kvm_sregs *sregs)
{
 struct descriptor_table dt;

 vcpu_load(vcpu);

 kvm_get_segment(vcpu, &sregs->cs, VCPU_SREG_CS);
 kvm_get_segment(vcpu, &sregs->ds, VCPU_SREG_DS);
 kvm_get_segment(vcpu, &sregs->es, VCPU_SREG_ES);
 kvm_get_segment(vcpu, &sregs->fs, VCPU_SREG_FS);
 kvm_get_segment(vcpu, &sregs->gs, VCPU_SREG_GS);
 kvm_get_segment(vcpu, &sregs->ss, VCPU_SREG_SS);

 kvm_get_segment(vcpu, &sregs->tr, VCPU_SREG_TR);
 kvm_get_segment(vcpu, &sregs->ldt, VCPU_SREG_LDTR);

 kvm_x86_ops->get_idt(vcpu, &dt);
 sregs->idt.limit = dt.limit;
 sregs->idt.base = dt.base;
 kvm_x86_ops->get_gdt(vcpu, &dt);
 sregs->gdt.limit = dt.limit;
 sregs->gdt.base = dt.base;

 sregs->cr0 = kvm_read_cr0(vcpu);
 sregs->cr2 = vcpu->arch.cr2;
 sregs->cr3 = vcpu->arch.cr3;
 sregs->cr4 = kvm_read_cr4(vcpu);
 sregs->cr8 = kvm_get_cr8(vcpu);
 sregs->efer = vcpu->arch.shadow_efer;
 sregs->apic_base = kvm_get_apic_base(vcpu);

 memset(sregs->interrupt_bitmap, 0, sizeof sregs->interrupt_bitmap);

 if (vcpu->arch.interrupt.pending && !vcpu->arch.interrupt.soft)
  set_bit(vcpu->arch.interrupt.nr,
   (unsigned long *)sregs->interrupt_bitmap);

 vcpu_put(vcpu);

 return 0;
}
