
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_7__ {TYPE_2__* fprs; } ;
typedef TYPE_3__ s390_fp_regs ;
typedef int __u8 ;
typedef int __u64 ;
typedef int __u32 ;
struct TYPE_5__ {TYPE_3__ fp_regs; } ;
struct TYPE_8__ {TYPE_1__ thread; } ;
struct TYPE_6__ {int d; } ;


 scalar_t__ calc_addr (struct pt_regs*,int,int,int) ;
 TYPE_4__* current ;
 int mathemu_copy_to_user (int *,int *,int) ;

int math_emu_std(__u8 *opcode, struct pt_regs * regs) {
        s390_fp_regs *fp_regs = &current->thread.fp_regs;
        __u32 opc = *((__u32 *) opcode);
        __u64 *dxb;

        dxb = (__u64 *) calc_addr(regs, opc >> 16, opc >> 12, opc);
        mathemu_copy_to_user(dxb, &fp_regs->fprs[(opc >> 20) & 0xf].d, 8);
 return 0;
}
