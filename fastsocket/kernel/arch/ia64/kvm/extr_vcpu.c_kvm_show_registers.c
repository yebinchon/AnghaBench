
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_13__ ;
typedef struct TYPE_16__ TYPE_12__ ;
typedef struct TYPE_15__ TYPE_11__ ;
typedef struct TYPE_14__ TYPE_10__ ;


struct kvm_vcpu {int vcpu_id; } ;
struct TYPE_15__ {int * bits; } ;
struct TYPE_16__ {TYPE_11__ u; } ;
struct TYPE_26__ {int * bits; } ;
struct TYPE_14__ {TYPE_9__ u; } ;
struct TYPE_24__ {int * bits; } ;
struct TYPE_25__ {TYPE_7__ u; } ;
struct TYPE_22__ {int * bits; } ;
struct TYPE_23__ {TYPE_5__ u; } ;
struct TYPE_20__ {int * bits; } ;
struct TYPE_21__ {TYPE_3__ u; } ;
struct TYPE_18__ {int * bits; } ;
struct TYPE_19__ {TYPE_1__ u; } ;
struct kvm_pt_regs {unsigned long cr_iip; unsigned long ar_rsc; unsigned long pr; unsigned long ar_fpsr; unsigned long b7; unsigned long r3; unsigned long r10; unsigned long r13; unsigned long r16; unsigned long r19; unsigned long r22; unsigned long r25; unsigned long r28; unsigned long r31; int r30; int r29; int r27; int r26; int r24; int r23; int r21; int r20; int r18; int r17; int r15; int r14; int r12; int r11; int r9; int r8; int r2; int r1; TYPE_12__ f11; TYPE_10__ f10; TYPE_8__ f9; TYPE_6__ f8; TYPE_4__ f7; TYPE_2__ f6; int b6; int b0; int ar_ssd; int ar_csd; int ar_ccv; int loadrs; int ar_bspstore; int ar_rnat; int ar_pfs; int ar_unat; int cr_ifs; int cr_ipsr; } ;
struct TYPE_17__ {unsigned long ri; } ;


 struct kvm_vcpu* current_vcpu ;
 TYPE_13__* ia64_psr (struct kvm_pt_regs*) ;
 int printk (char*,struct kvm_vcpu*,int ,...) ;

__attribute__((used)) static void kvm_show_registers(struct kvm_pt_regs *regs)
{
 unsigned long ip = regs->cr_iip + ia64_psr(regs)->ri;

 struct kvm_vcpu *vcpu = current_vcpu;
 if (vcpu != ((void*)0))
  printk("vcpu 0x%p vcpu %d\n",
         vcpu, vcpu->vcpu_id);

 printk("psr : %016lx ifs : %016lx ip  : [<%016lx>]\n",
        regs->cr_ipsr, regs->cr_ifs, ip);

 printk("unat: %016lx pfs : %016lx rsc : %016lx\n",
        regs->ar_unat, regs->ar_pfs, regs->ar_rsc);
 printk("rnat: %016lx bspstore: %016lx pr  : %016lx\n",
        regs->ar_rnat, regs->ar_bspstore, regs->pr);
 printk("ldrs: %016lx ccv : %016lx fpsr: %016lx\n",
        regs->loadrs, regs->ar_ccv, regs->ar_fpsr);
 printk("csd : %016lx ssd : %016lx\n", regs->ar_csd, regs->ar_ssd);
 printk("b0  : %016lx b6  : %016lx b7  : %016lx\n", regs->b0,
       regs->b6, regs->b7);
 printk("f6  : %05lx%016lx f7  : %05lx%016lx\n",
        regs->f6.u.bits[1], regs->f6.u.bits[0],
        regs->f7.u.bits[1], regs->f7.u.bits[0]);
 printk("f8  : %05lx%016lx f9  : %05lx%016lx\n",
        regs->f8.u.bits[1], regs->f8.u.bits[0],
        regs->f9.u.bits[1], regs->f9.u.bits[0]);
 printk("f10 : %05lx%016lx f11 : %05lx%016lx\n",
        regs->f10.u.bits[1], regs->f10.u.bits[0],
        regs->f11.u.bits[1], regs->f11.u.bits[0]);

 printk("r1  : %016lx r2  : %016lx r3  : %016lx\n", regs->r1,
       regs->r2, regs->r3);
 printk("r8  : %016lx r9  : %016lx r10 : %016lx\n", regs->r8,
       regs->r9, regs->r10);
 printk("r11 : %016lx r12 : %016lx r13 : %016lx\n", regs->r11,
       regs->r12, regs->r13);
 printk("r14 : %016lx r15 : %016lx r16 : %016lx\n", regs->r14,
       regs->r15, regs->r16);
 printk("r17 : %016lx r18 : %016lx r19 : %016lx\n", regs->r17,
       regs->r18, regs->r19);
 printk("r20 : %016lx r21 : %016lx r22 : %016lx\n", regs->r20,
       regs->r21, regs->r22);
 printk("r23 : %016lx r24 : %016lx r25 : %016lx\n", regs->r23,
       regs->r24, regs->r25);
 printk("r26 : %016lx r27 : %016lx r28 : %016lx\n", regs->r26,
       regs->r27, regs->r28);
 printk("r29 : %016lx r30 : %016lx r31 : %016lx\n", regs->r29,
       regs->r30, regs->r31);

}
