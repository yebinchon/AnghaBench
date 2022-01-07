
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {unsigned int size; unsigned int cur_count; scalar_t__ in; int guest_gva; } ;
struct TYPE_4__ {TYPE_1__ pio; void* pio_data; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
typedef int gva_t ;


 int X86EMUL_PROPAGATE_FAULT ;
 int kvm_inject_page_fault (struct kvm_vcpu*,int ,int ) ;
 int kvm_read_guest_virt (int ,void*,unsigned int,struct kvm_vcpu*,int *) ;
 int kvm_write_guest_virt (int ,void*,unsigned int,struct kvm_vcpu*,int *) ;

__attribute__((used)) static int pio_copy_data(struct kvm_vcpu *vcpu)
{
 void *p = vcpu->arch.pio_data;
 gva_t q = vcpu->arch.pio.guest_gva;
 unsigned bytes;
 int ret;
 u32 error_code;

 bytes = vcpu->arch.pio.size * vcpu->arch.pio.cur_count;
 if (vcpu->arch.pio.in)
  ret = kvm_write_guest_virt(q, p, bytes, vcpu, &error_code);
 else
  ret = kvm_read_guest_virt(q, p, bytes, vcpu, &error_code);

 if (ret == X86EMUL_PROPAGATE_FAULT)
  kvm_inject_page_fault(vcpu, q, error_code);

 return ret;
}
