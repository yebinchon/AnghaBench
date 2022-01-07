
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
typedef int __u8 ;
typedef int __u32 ;
struct TYPE_4__ {int fpc; } ;
struct TYPE_5__ {TYPE_1__ fp_regs; } ;
struct TYPE_6__ {TYPE_2__ thread; } ;


 scalar_t__ calc_addr (struct pt_regs*,int ,int,int) ;
 TYPE_3__* current ;
 int mathemu_put_user (int ,int*) ;

int math_emu_stfpc(__u8 *opcode, struct pt_regs *regs) {
        __u32 opc = *((__u32 *) opcode);
        __u32 *dxb;

        dxb= (__u32 *) calc_addr(regs, 0, opc>>12, opc);
        mathemu_put_user(current->thread.fp_regs.fpc, dxb);
        return 0;
}
