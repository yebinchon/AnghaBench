
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
typedef int __u8 ;
struct TYPE_4__ {int fpc; } ;
struct TYPE_5__ {TYPE_1__ fp_regs; } ;
struct TYPE_6__ {TYPE_2__ thread; } ;


 int SIGFPE ;
 int SIGILL ;
 TYPE_3__* current ;
 int emu_load_regd (int) ;
 int emu_load_rege (int) ;
 int emu_store_regd (int) ;
 int emu_store_rege (int) ;

 int stub1 (struct pt_regs*,int,int) ;
 int stub10 (struct pt_regs*,int,int,int) ;
 int stub11 (struct pt_regs*,int,int,int) ;
 int stub12 (struct pt_regs*,int,int,int) ;
 int stub13 (struct pt_regs*,int,int) ;
 int stub14 (struct pt_regs*,int,int) ;
 int stub15 (struct pt_regs*,int,int) ;
 int stub16 (struct pt_regs*,int,int) ;
 int stub17 (struct pt_regs*,int,int) ;
 int stub18 (struct pt_regs*,int,int) ;
 int stub19 (struct pt_regs*,int,int) ;
 int stub2 (struct pt_regs*,int,int) ;
 int stub3 (struct pt_regs*,int,int) ;
 int stub4 (struct pt_regs*,int,int,int) ;
 int stub5 (struct pt_regs*,int,int,int) ;
 int stub6 (struct pt_regs*,int,int,int) ;
 int stub7 (struct pt_regs*,int,int) ;
 int stub8 (struct pt_regs*,int,int) ;
 int stub9 (struct pt_regs*,int,int) ;

int math_emu_b3(__u8 *opcode, struct pt_regs * regs) {
        int _fex = 0;
        static const __u8 format_table[256] = {
                [0x00] = 0x03,[0x01] = 0x03,[0x02] = 0x03,[0x03] = 0x03,
  [0x04] = 0x0f,[0x05] = 0x0d,[0x06] = 0x0e,[0x07] = 0x0d,
  [0x08] = 0x03,[0x09] = 0x03,[0x0a] = 0x03,[0x0b] = 0x03,
                [0x0c] = 0x0f,[0x0d] = 0x03,[0x0e] = 0x06,[0x0f] = 0x06,
  [0x10] = 0x02,[0x11] = 0x02,[0x12] = 0x02,[0x13] = 0x02,
  [0x14] = 0x03,[0x15] = 0x02,[0x16] = 0x01,[0x17] = 0x03,
                [0x18] = 0x02,[0x19] = 0x02,[0x1a] = 0x02,[0x1b] = 0x02,
  [0x1c] = 0x02,[0x1d] = 0x02,[0x1e] = 0x05,[0x1f] = 0x05,
  [0x40] = 0x01,[0x41] = 0x01,[0x42] = 0x01,[0x43] = 0x01,
                [0x44] = 0x12,[0x45] = 0x0d,[0x46] = 0x11,[0x47] = 0x04,
  [0x48] = 0x01,[0x49] = 0x01,[0x4a] = 0x01,[0x4b] = 0x01,
  [0x4c] = 0x01,[0x4d] = 0x01,[0x53] = 0x06,[0x57] = 0x06,
                [0x5b] = 0x05,[0x5f] = 0x05,[0x84] = 0x13,[0x8c] = 0x13,
  [0x94] = 0x09,[0x95] = 0x08,[0x96] = 0x07,[0x98] = 0x0c,
  [0x99] = 0x0b,[0x9a] = 0x0a
        };
        static const void *jump_table[256]= {
                [0x00] = 150,[0x01] = 153,[0x02] = 147,
                [0x03] = 160,[0x04] = 158,[0x05] = 145,
                [0x06] = 144,[0x07] = 135,[0x08] = 163,
                [0x09] = 180, [0x0a] = 184, [0x0b] = 133,
                [0x0c] = 140,[0x0d] = 172, [0x0e] = 142,
                [0x0f] = 137,[0x10] = 151,[0x11] = 154,
                [0x12] = 148,[0x13] = 161,[0x14] = 130,
                [0x15] = 131,[0x16] = 129,[0x17] = 139,
                [0x18] = 164, [0x19] = 182, [0x1a] = 185,
                [0x1b] = 134, [0x1c] = 141, [0x1d] = 173,
                [0x1e] = 143,[0x1f] = 138,[0x40] = 149,
                [0x41] = 152,[0x42] = 146,[0x43] = 159,
                [0x44] = 156,[0x45] = 157,[0x46] = 155,
                [0x47] = 165,[0x48] = 162, [0x49] = 175,
                [0x4a] = 183, [0x4b] = 128, [0x4c] = 136,
                [0x4d] = 169, [0x53] = 170,[0x57] = 166,
                [0x5b] = 171,[0x5f] = 167,[0x84] = 132,
                [0x8c] = 168, [0x94] = 179,[0x95] = 181,
                [0x96] = 174,[0x98] = 177,[0x99] = 178,
                [0x9a] = 176
        };

        switch (format_table[opcode[1]]) {
        case 1:
                if (opcode[3] & 0x22)
   return SIGILL;
                emu_store_regd((opcode[3] >> 4) & 15);
                emu_store_regd(((opcode[3] >> 4) & 15) + 2);
                emu_store_regd(opcode[3] & 15);
                emu_store_regd((opcode[3] & 15) + 2);

                _fex = ((int (*)(struct pt_regs *,int, int))
   jump_table[opcode[1]])
                        (regs, opcode[3] >> 4, opcode[3] & 15);
                emu_load_regd((opcode[3] >> 4) & 15);
                emu_load_regd(((opcode[3] >> 4) & 15) + 2);
                emu_load_regd(opcode[3] & 15);
                emu_load_regd((opcode[3] & 15) + 2);
  break;
        case 2:
                emu_store_regd((opcode[3] >> 4) & 15);
                emu_store_regd(opcode[3] & 15);

                _fex = ((int (*)(struct pt_regs *, int, int))
   jump_table[opcode[1]])
                        (regs, opcode[3] >> 4, opcode[3] & 15);
                emu_load_regd((opcode[3] >> 4) & 15);
                emu_load_regd(opcode[3] & 15);
  break;
        case 3:
                emu_store_rege((opcode[3] >> 4) & 15);
                emu_store_rege(opcode[3] & 15);

                _fex = ((int (*)(struct pt_regs *, int, int))
   jump_table[opcode[1]])
                        (regs, opcode[3] >> 4, opcode[3] & 15);
                emu_load_rege((opcode[3] >> 4) & 15);
                emu_load_rege(opcode[3] & 15);
  break;
        case 4:
                if (opcode[3] & 0x22)
   return SIGILL;
                emu_store_regd((opcode[3] >> 4) & 15);
                emu_store_regd(((opcode[3] >> 4) & 15) + 2);
                emu_store_regd(opcode[3] & 15);
                emu_store_regd((opcode[3] & 15) + 2);

                _fex = ((int (*)(struct pt_regs *, int, int, int))
   jump_table[opcode[1]])
                        (regs, opcode[3] >> 4, opcode[3] & 15, opcode[2] >> 4);
                emu_load_regd((opcode[3] >> 4) & 15);
                emu_load_regd(((opcode[3] >> 4) & 15) + 2);
                emu_load_regd(opcode[3] & 15);
                emu_load_regd((opcode[3] & 15) + 2);
  break;
        case 5:
                emu_store_regd((opcode[2] >> 4) & 15);
                emu_store_regd((opcode[3] >> 4) & 15);
                emu_store_regd(opcode[3] & 15);

                _fex = ((int (*)(struct pt_regs *, int, int, int))
   jump_table[opcode[1]])
                        (regs, opcode[3] >> 4, opcode[3] & 15, opcode[2] >> 4);
                emu_load_regd((opcode[2] >> 4) & 15);
                emu_load_regd((opcode[3] >> 4) & 15);
                emu_load_regd(opcode[3] & 15);
  break;
        case 6:
                emu_store_rege((opcode[2] >> 4) & 15);
                emu_store_rege((opcode[3] >> 4) & 15);
                emu_store_rege(opcode[3] & 15);

                _fex = ((int (*)(struct pt_regs *, int, int, int))
   jump_table[opcode[1]])
                        (regs, opcode[3] >> 4, opcode[3] & 15, opcode[2] >> 4);
                emu_load_rege((opcode[2] >> 4) & 15);
                emu_load_rege((opcode[3] >> 4) & 15);
                emu_load_rege(opcode[3] & 15);
  break;
        case 7:

                if (opcode[3] & 0x20)
   return SIGILL;
                _fex = ((int (*)(struct pt_regs *, int, int))
   jump_table[opcode[1]])
                        (regs, opcode[3] >> 4, opcode[3] & 15);
                emu_load_regd((opcode[3] >> 4) & 15);
                emu_load_regd(((opcode[3] >> 4) & 15) + 2);
  break;
        case 8:

                _fex = ((int (*)(struct pt_regs *, int, int))
   jump_table[opcode[1]])
                        (regs, opcode[3] >> 4, opcode[3] & 15);
                emu_load_regd((opcode[3] >> 4) & 15);
  break;
        case 9:

                _fex = ((int (*)(struct pt_regs *, int, int))
   jump_table[opcode[1]])
                        (regs, opcode[3] >> 4, opcode[3] & 15);
                emu_load_rege((opcode[3] >> 4) & 15);
  break;
        case 10:
                if ((opcode[2] & 128) == 128 || (opcode[2] & 96) == 32)

   return SIGILL;
                if (opcode[3] & 2)
   return SIGILL;
                emu_store_regd(opcode[3] & 15);
                emu_store_regd((opcode[3] & 15) + 2);

                _fex = ((int (*)(struct pt_regs *, int, int, int))
   jump_table[opcode[1]])
                        (regs, opcode[3] >> 4, opcode[3] & 15, opcode[2] >> 4);
  break;
        case 11:
                if ((opcode[2] & 128) == 128 || (opcode[2] & 96) == 32)

   return SIGILL;
                emu_store_regd(opcode[3] & 15);

                _fex = ((int (*)(struct pt_regs *, int, int, int))
   jump_table[opcode[1]])
                        (regs, opcode[3] >> 4, opcode[3] & 15, opcode[2] >> 4);
  break;
        case 12:
                if ((opcode[2] & 128) == 128 || (opcode[2] & 96) == 32)

   return SIGILL;
                emu_store_rege(opcode[3] & 15);

                _fex = ((int (*)(struct pt_regs *, int, int, int))
   jump_table[opcode[1]])
                        (regs, opcode[3] >> 4, opcode[3] & 15, opcode[2] >> 4);
  break;
        case 13:

                if (opcode[3] & 0x20)
   return SIGILL;
                emu_store_regd((opcode[3] >> 4) & 15);
                emu_store_regd(opcode[3] & 15);

                _fex = ((int (*)(struct pt_regs *, int, int))
   jump_table[opcode[1]])
                        (regs, opcode[3] >> 4, opcode[3] & 15);
                emu_load_regd((opcode[3] >> 4) & 15);
                emu_load_regd(((opcode[3] >> 4) & 15) + 2);
  break;
        case 14:

                if (opcode[3] & 0x20)
   return SIGILL;
                emu_store_rege((opcode[3] >> 4) & 15);
                emu_store_rege(opcode[3] & 15);

                _fex = ((int (*)(struct pt_regs *, int, int))
   jump_table[opcode[1]])
                        (regs, opcode[3] >> 4, opcode[3] & 15);
                emu_load_regd((opcode[3] >> 4) & 15);
                emu_load_regd(((opcode[3] >> 4) & 15) + 2);
  break;
        case 15:

                emu_store_rege((opcode[3] >> 4) & 15);
                emu_store_rege(opcode[3] & 15);

                _fex = ((int (*)(struct pt_regs *, int, int))
   jump_table[opcode[1]])
                        (regs, opcode[3] >> 4, opcode[3] & 15);
                emu_load_regd((opcode[3] >> 4) & 15);
  break;
        case 16:

                if (opcode[3] & 2)
   return SIGILL;
                emu_store_regd(opcode[3] & 15);
                emu_store_regd((opcode[3] & 15) + 2);

                _fex = ((int (*)(struct pt_regs *, int, int))
   jump_table[opcode[1]])
                        (regs, opcode[3] >> 4, opcode[3] & 15);
                emu_load_regd((opcode[3] >> 4) & 15);
                break;
        case 17:

                if (opcode[3] & 2)
   return SIGILL;
                emu_store_regd(opcode[3] & 15);
                emu_store_regd((opcode[3] & 15) + 2);

                _fex = ((int (*)(struct pt_regs *, int, int))
   jump_table[opcode[1]])
                        (regs, opcode[3] >> 4, opcode[3] & 15);
                emu_load_rege((opcode[3] >> 4) & 15);
                break;
        case 18:

                emu_store_regd(opcode[3] & 15);

                _fex = ((int (*)(struct pt_regs *, int, int))
   jump_table[opcode[1]])
                        (regs, opcode[3] >> 4, opcode[3] & 15);
                emu_load_rege((opcode[3] >> 4) & 15);
                break;
        case 19:

                _fex = ((int (*)(struct pt_regs *, int, int))
   jump_table[opcode[1]])
                        (regs, opcode[3] >> 4, opcode[3] & 15);
                break;
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
