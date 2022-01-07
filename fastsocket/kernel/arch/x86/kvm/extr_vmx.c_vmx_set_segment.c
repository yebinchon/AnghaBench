
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int selector; int base; int limit; void* ar; } ;
struct TYPE_4__ {int fs; int gs; int ds; int es; scalar_t__ vm86_active; TYPE_1__ tr; } ;
struct vcpu_vmx {TYPE_2__ rmode; } ;
struct kvm_vmx_segment_field {int ar_bytes; int base; int selector; int limit; } ;
struct kvm_vcpu {int dummy; } ;
struct kvm_segment {int selector; int base; int limit; scalar_t__ s; } ;


 int GUEST_CS_AR_BYTES ;
 int GUEST_CS_BASE ;
 int GUEST_CS_LIMIT ;
 int GUEST_CS_SELECTOR ;
 int GUEST_SS_AR_BYTES ;
 int GUEST_SS_BASE ;
 int GUEST_SS_LIMIT ;
 int GUEST_SS_SELECTOR ;





 int VCPU_SREG_LDTR ;

 int VCPU_SREG_TR ;
 scalar_t__ enable_unrestricted_guest ;
 int fix_rmode_seg (int const,int *) ;
 struct kvm_vmx_segment_field* kvm_vmx_segment_fields ;
 struct vcpu_vmx* to_vmx (struct kvm_vcpu*) ;
 int vmcs_readl (int ) ;
 int vmcs_write16 (int ,int) ;
 int vmcs_write32 (int ,int) ;
 int vmcs_writel (int ,int) ;
 void* vmx_segment_access_rights (struct kvm_segment*) ;

__attribute__((used)) static void vmx_set_segment(struct kvm_vcpu *vcpu,
       struct kvm_segment *var, int seg)
{
 struct vcpu_vmx *vmx = to_vmx(vcpu);
 struct kvm_vmx_segment_field *sf = &kvm_vmx_segment_fields[seg];
 u32 ar;

 if (vmx->rmode.vm86_active && seg == VCPU_SREG_TR) {
  vmcs_write16(sf->selector, var->selector);
  vmx->rmode.tr.selector = var->selector;
  vmx->rmode.tr.base = var->base;
  vmx->rmode.tr.limit = var->limit;
  vmx->rmode.tr.ar = vmx_segment_access_rights(var);
  return;
 }
 vmcs_writel(sf->base, var->base);
 vmcs_write32(sf->limit, var->limit);
 vmcs_write16(sf->selector, var->selector);
 if (vmx->rmode.vm86_active && var->s) {



  if (var->base == 0xffff0000 && var->selector == 0xf000)
   vmcs_writel(sf->base, 0xf0000);
  ar = 0xf3;
 } else
  ar = vmx_segment_access_rights(var);
 if (enable_unrestricted_guest && (seg != VCPU_SREG_LDTR))
  ar |= 0x1;

 vmcs_write32(sf->ar_bytes, ar);
 if (!enable_unrestricted_guest && vmx->rmode.vm86_active) {
  switch (seg) {
  case 133:
   vmcs_write32(GUEST_CS_AR_BYTES, 0xf3);
   vmcs_write32(GUEST_CS_LIMIT, 0xffff);
   if (vmcs_readl(GUEST_CS_BASE) == 0xffff0000)
    vmcs_writel(GUEST_CS_BASE, 0xf0000);
   vmcs_write16(GUEST_CS_SELECTOR,
         vmcs_readl(GUEST_CS_BASE) >> 4);
   break;
  case 131:
   fix_rmode_seg(131, &vmx->rmode.es);
   break;
  case 132:
   fix_rmode_seg(132, &vmx->rmode.ds);
   break;
  case 129:
   fix_rmode_seg(129, &vmx->rmode.gs);
   break;
  case 130:
   fix_rmode_seg(130, &vmx->rmode.fs);
   break;
  case 128:
   vmcs_write16(GUEST_SS_SELECTOR,
         vmcs_readl(GUEST_SS_BASE) >> 4);
   vmcs_write32(GUEST_SS_LIMIT, 0xffff);
   vmcs_write32(GUEST_SS_AR_BYTES, 0xf3);
   break;
  }
 }
}
