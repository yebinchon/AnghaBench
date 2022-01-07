
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
typedef int __u8 ;
typedef long __u64 ;
typedef int __u32 ;
struct TYPE_4__ {int fpc; } ;
struct TYPE_5__ {TYPE_1__ fp_regs; } ;
struct TYPE_6__ {TYPE_2__ thread; } ;


 int SIGFPE ;
 int SIGILL ;
 scalar_t__ calc_addr (struct pt_regs*,int,int,int) ;
 TYPE_3__* current ;
 int emu_load_regd (int) ;
 int emu_load_rege (int) ;
 int emu_store_regd (int) ;
 int emu_store_rege (int) ;



 int mathemu_copy_from_user (long*,long*,int) ;
 int mathemu_get_user (int,int*) ;
 int stub1 (struct pt_regs*,int,double*) ;
 int stub10 (struct pt_regs*,int,long) ;
 int stub2 (struct pt_regs*,int,float*) ;
 int stub3 (struct pt_regs*,int,double*,int) ;
 int stub4 (struct pt_regs*,int,float*,int) ;
 int stub5 (struct pt_regs*,int,double*) ;
 int stub6 (struct pt_regs*,int,float*) ;
 int stub7 (struct pt_regs*,int,float*) ;
 int stub8 (struct pt_regs*,int,long) ;
 int stub9 (struct pt_regs*,int,long) ;

int math_emu_ed(__u8 *opcode, struct pt_regs * regs) {
        int _fex = 0;

        static const __u8 format_table[256] = {
                [0x04] = 0x06,[0x05] = 0x05,[0x06] = 0x07,[0x07] = 0x05,
  [0x08] = 0x02,[0x09] = 0x02,[0x0a] = 0x02,[0x0b] = 0x02,
  [0x0c] = 0x06,[0x0d] = 0x02,[0x0e] = 0x04,[0x0f] = 0x04,
                [0x10] = 0x08,[0x11] = 0x09,[0x12] = 0x0a,[0x14] = 0x02,
  [0x15] = 0x01,[0x17] = 0x02,[0x18] = 0x01,[0x19] = 0x01,
  [0x1a] = 0x01,[0x1b] = 0x01,[0x1c] = 0x01,[0x1d] = 0x01,
                [0x1e] = 0x03,[0x1f] = 0x03,
        };
        static const void *jump_table[]= {
                [0x04] = 145,[0x05] = 144,[0x06] = 143,
                [0x07] = 135,[0x08] = 146, [0x09] = 150,
                [0x0a] = 152, [0x0b] = 133, [0x0c] = 139,
                [0x0d] = 148, [0x0e] = 141,[0x0f] = 136,
                [0x10] = 129,[0x11] = 130,[0x12] = 128,
                [0x14] = 131,[0x15] = 132,[0x17] = 138,
                [0x18] = 147, [0x19] = 151, [0x1a] = 153,
                [0x1b] = 134, [0x1c] = 140, [0x1d] = 149,
                [0x1e] = 142,[0x1f] = 137
        };

        switch (format_table[opcode[5]]) {
        case 1: {
                __u64 *dxb, temp;
                __u32 opc;

                emu_store_regd((opcode[1] >> 4) & 15);
                opc = *((__u32 *) opcode);
                dxb = (__u64 *) calc_addr(regs, opc >> 16, opc >> 12, opc);
                mathemu_copy_from_user(&temp, dxb, 8);

                _fex = ((int (*)(struct pt_regs *, int, double *))
   jump_table[opcode[5]])
                        (regs, opcode[1] >> 4, (double *) &temp);
                emu_load_regd((opcode[1] >> 4) & 15);
                break;
        }
        case 2: {
                __u32 *dxb, temp;
                __u32 opc;

                emu_store_rege((opcode[1] >> 4) & 15);
                opc = *((__u32 *) opcode);
                dxb = (__u32 *) calc_addr(regs, opc >> 16, opc >> 12, opc);
                mathemu_get_user(temp, dxb);

                _fex = ((int (*)(struct pt_regs *, int, float *))
   jump_table[opcode[5]])
                        (regs, opcode[1] >> 4, (float *) &temp);
                emu_load_rege((opcode[1] >> 4) & 15);
                break;
        }
        case 3: {
                __u64 *dxb, temp;
                __u32 opc;

                emu_store_regd((opcode[1] >> 4) & 15);
                emu_store_regd((opcode[4] >> 4) & 15);
                opc = *((__u32 *) opcode);
                dxb = (__u64 *) calc_addr(regs, opc >> 16, opc >> 12, opc);
                mathemu_copy_from_user(&temp, dxb, 8);

                _fex = ((int (*)(struct pt_regs *, int, double *, int))
   jump_table[opcode[5]])
                        (regs, opcode[1] >> 4, (double *) &temp, opcode[4] >> 4);
                emu_load_regd((opcode[1] >> 4) & 15);
                break;
        }
        case 4: {
                __u32 *dxb, temp;
                __u32 opc;

                emu_store_rege((opcode[1] >> 4) & 15);
                emu_store_rege((opcode[4] >> 4) & 15);
                opc = *((__u32 *) opcode);
                dxb = (__u32 *) calc_addr(regs, opc >> 16, opc >> 12, opc);
                mathemu_get_user(temp, dxb);

                _fex = ((int (*)(struct pt_regs *, int, float *, int))
   jump_table[opcode[5]])
                        (regs, opcode[1] >> 4, (float *) &temp, opcode[4] >> 4);
                emu_load_rege((opcode[4] >> 4) & 15);
                break;
        }
        case 5:

        {
                __u64 *dxb, temp;
                __u32 opc;
                if ((opcode[1] >> 4) & 0x20)
   return SIGILL;
                emu_store_regd((opcode[1] >> 4) & 15);
                opc = *((__u32 *) opcode);
                dxb = (__u64 *) calc_addr(regs, opc >> 16, opc >> 12, opc);
                mathemu_copy_from_user(&temp, dxb, 8);

                _fex = ((int (*)(struct pt_regs *, int, double *))
   jump_table[opcode[5]])
                        (regs, opcode[1] >> 4, (double *) &temp);
                emu_load_regd((opcode[1] >> 4) & 15);
                emu_load_regd(((opcode[1] >> 4) & 15) + 2);
                break;
        }
        case 6:

        {
                __u32 *dxb, temp;
                __u32 opc;
                emu_store_rege((opcode[1] >> 4) & 15);
                opc = *((__u32 *) opcode);
                dxb = (__u32 *) calc_addr(regs, opc >> 16, opc >> 12, opc);
                mathemu_get_user(temp, dxb);

                _fex = ((int (*)(struct pt_regs *, int, float *))
   jump_table[opcode[5]])
                        (regs, opcode[1] >> 4, (float *) &temp);
                emu_load_regd((opcode[1] >> 4) & 15);
                break;
        }
        case 7:

        {
                __u32 *dxb, temp;
                __u32 opc;
                if ((opcode[1] >> 4) & 0x20)
   return SIGILL;
                emu_store_rege((opcode[1] >> 4) & 15);
                opc = *((__u32 *) opcode);
                dxb = (__u32 *) calc_addr(regs, opc >> 16, opc >> 12, opc);
                mathemu_get_user(temp, dxb);

                _fex = ((int (*)(struct pt_regs *, int, float *))
   jump_table[opcode[5]])
                        (regs, opcode[1] >> 4, (float *) &temp);
                emu_load_regd((opcode[1] >> 4) & 15);
                emu_load_regd(((opcode[1] >> 4) & 15) + 2);
                break;
        }
        case 8: {
                __u64 dxb;
                __u32 opc;

                emu_store_rege((opcode[1] >> 4) & 15);
                opc = *((__u32 *) opcode);
                dxb = (__u64) calc_addr(regs, opc >> 16, opc >> 12, opc);

                _fex = ((int (*)(struct pt_regs *, int, long))
   jump_table[opcode[5]])
                        (regs, opcode[1] >> 4, dxb);
                break;
        }
        case 9: {
                __u64 dxb;
                __u32 opc;

                emu_store_regd((opcode[1] >> 4) & 15);
                opc = *((__u32 *) opcode);
                dxb = (__u64) calc_addr(regs, opc >> 16, opc >> 12, opc);

                _fex = ((int (*)(struct pt_regs *, int, long))
   jump_table[opcode[5]])
                        (regs, opcode[1] >> 4, dxb);
                break;
        }
        case 10: {
                __u64 dxb;
                __u32 opc;

                if ((opcode[1] >> 4) & 2)
   return SIGILL;
                emu_store_regd((opcode[1] >> 4) & 15);
                emu_store_regd(((opcode[1] >> 4) & 15) + 2);
                opc = *((__u32 *) opcode);
                dxb = (__u64) calc_addr(regs, opc >> 16, opc >> 12, opc);

                _fex = ((int (*)(struct pt_regs *, int, long))
   jump_table[opcode[5]])
                        (regs, opcode[1] >> 4, dxb);
                break;
        }
        default:
                return SIGILL;
        }
 if (_fex != 0) {
  current->thread.fp_regs.fpc |= _fex;
  if (current->thread.fp_regs.fpc & (_fex << 8))
   return SIGFPE;
 }
 return 0;
}
