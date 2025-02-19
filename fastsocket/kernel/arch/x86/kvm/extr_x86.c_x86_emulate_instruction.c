
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct decode_cache {int b; int modrm_mod; int modrm_rm; int modrm_reg; int eip; int twobyte; } ;
struct TYPE_12__ {int eflags; int interruptibility; struct decode_cache decode; int mode; struct kvm_vcpu* vcpu; } ;
struct TYPE_9__ {scalar_t__ string; } ;
struct TYPE_11__ {unsigned long mmio_fault_cr2; int cr0; TYPE_5__ emulate_ctxt; TYPE_2__ pio; } ;
struct TYPE_8__ {int insn_emulation_fail; int insn_emulation; } ;
struct kvm_vcpu {scalar_t__ mmio_needed; scalar_t__ mmio_is_write; TYPE_4__ arch; int mmio_size; int mmio_data; int mmio_phys_addr; TYPE_1__ stat; struct kvm_run* run; } ;
struct TYPE_10__ {scalar_t__ is_write; int len; int data; int phys_addr; } ;
struct kvm_run {TYPE_3__ mmio; int exit_reason; } ;
struct TYPE_13__ {int (* get_rflags ) (struct kvm_vcpu*) ;int (* set_rflags ) (struct kvm_vcpu*,int) ;int (* set_interrupt_shadow ) (struct kvm_vcpu*,int) ;int (* get_cs_db_l_bits ) (struct kvm_vcpu*,int*,int*) ;} ;


 int EMULATE_DONE ;
 int EMULATE_DO_MMIO ;
 int EMULATE_FAIL ;
 int EMULTYPE_NO_DECODE ;
 int EMULTYPE_SKIP ;
 int EMULTYPE_TRAP_UD ;
 int KVM_EXIT_MMIO ;
 int X86EMUL_MODE_PROT16 ;
 int X86EMUL_MODE_PROT32 ;
 int X86EMUL_MODE_PROT64 ;
 int X86EMUL_MODE_REAL ;
 int X86EMUL_MODE_VM86 ;
 int X86_CR0_PE ;
 int X86_EFLAGS_VM ;
 int cache_all_regs (struct kvm_vcpu*) ;
 int emulate_ops ;
 int kvm_clear_exception_queue (struct kvm_vcpu*) ;
 int kvm_report_emulation_failure (struct kvm_vcpu*,char*) ;
 int kvm_rip_write (struct kvm_vcpu*,int ) ;
 TYPE_7__* kvm_x86_ops ;
 int memcpy (int ,int ,int) ;
 scalar_t__ reexecute_instruction (struct kvm_vcpu*,unsigned long) ;
 int stub1 (struct kvm_vcpu*,int*,int*) ;
 int stub2 (struct kvm_vcpu*) ;
 int stub3 (struct kvm_vcpu*,int) ;
 int stub4 (struct kvm_vcpu*,int) ;
 int x86_decode_insn (TYPE_5__*,int *,void*,int) ;
 int x86_emulate_insn (TYPE_5__*,int *) ;

int x86_emulate_instruction(struct kvm_vcpu *vcpu,
   unsigned long cr2,
   int emulation_type,
   void *insn,
   int insn_len)
{
 int r, shadow_mask;
 struct decode_cache *c;
 struct kvm_run *run = vcpu->run;

 kvm_clear_exception_queue(vcpu);
 vcpu->arch.mmio_fault_cr2 = cr2;






 cache_all_regs(vcpu);

 vcpu->mmio_is_write = 0;
 vcpu->arch.pio.string = 0;

 if (!(emulation_type & EMULTYPE_NO_DECODE)) {
  int cs_db, cs_l;
  kvm_x86_ops->get_cs_db_l_bits(vcpu, &cs_db, &cs_l);

  vcpu->arch.emulate_ctxt.vcpu = vcpu;
  vcpu->arch.emulate_ctxt.eflags = kvm_x86_ops->get_rflags(vcpu);
  vcpu->arch.emulate_ctxt.mode =
   (!(vcpu->arch.cr0 & X86_CR0_PE)) ? X86EMUL_MODE_REAL :
   (vcpu->arch.emulate_ctxt.eflags & X86_EFLAGS_VM)
   ? X86EMUL_MODE_VM86 : cs_l
   ? X86EMUL_MODE_PROT64 : cs_db
   ? X86EMUL_MODE_PROT32 : X86EMUL_MODE_PROT16;

  r = x86_decode_insn(&vcpu->arch.emulate_ctxt, &emulate_ops,
        insn, insn_len);



  c = &vcpu->arch.emulate_ctxt.decode;
  if (emulation_type & EMULTYPE_TRAP_UD) {
   if (!c->twobyte)
    return EMULATE_FAIL;
   switch (c->b) {
   case 0x01:
    if (c->modrm_mod != 3 || c->modrm_rm != 1)
     return EMULATE_FAIL;
    break;
   case 0x34:
   case 0x35:
    if (c->modrm_mod != 0 || c->modrm_rm != 0)
     return EMULATE_FAIL;
    break;
   case 0x05:
    if (c->modrm_mod != 0 || c->modrm_rm != 0)
     return EMULATE_FAIL;
    break;
   default:
    return EMULATE_FAIL;
   }

   if (!(c->modrm_reg == 0 || c->modrm_reg == 3))
    return EMULATE_FAIL;
  }

  ++vcpu->stat.insn_emulation;
  if (r) {
   ++vcpu->stat.insn_emulation_fail;
   if (reexecute_instruction(vcpu, cr2))
    return EMULATE_DONE;
   return EMULATE_FAIL;
  }
 }

 if (emulation_type & EMULTYPE_SKIP) {
  kvm_rip_write(vcpu, vcpu->arch.emulate_ctxt.decode.eip);
  return EMULATE_DONE;
 }

 r = x86_emulate_insn(&vcpu->arch.emulate_ctxt, &emulate_ops);
 shadow_mask = vcpu->arch.emulate_ctxt.interruptibility;

 if (r == 0)
  kvm_x86_ops->set_interrupt_shadow(vcpu, shadow_mask);

 if (vcpu->arch.pio.string)
  return EMULATE_DO_MMIO;

 if ((r || vcpu->mmio_is_write) && run) {
  run->exit_reason = KVM_EXIT_MMIO;
  run->mmio.phys_addr = vcpu->mmio_phys_addr;
  memcpy(run->mmio.data, vcpu->mmio_data, 8);
  run->mmio.len = vcpu->mmio_size;
  run->mmio.is_write = vcpu->mmio_is_write;
 }

 if (r) {
  if (reexecute_instruction(vcpu, cr2))
   return EMULATE_DONE;
  if (!vcpu->mmio_needed) {
   kvm_report_emulation_failure(vcpu, "mmio");
   return EMULATE_FAIL;
  }
  return EMULATE_DO_MMIO;
 }

 kvm_x86_ops->set_rflags(vcpu, vcpu->arch.emulate_ctxt.eflags);

 if (vcpu->mmio_is_write) {
  vcpu->mmio_needed = 0;
  return EMULATE_DO_MMIO;
 }

 return EMULATE_DONE;
}
