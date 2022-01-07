
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;






 int _print_next_block (int ,char*) ;

__attribute__((used)) static int bnx2x_check_blocks_with_parity3(u32 sig, int par_num,
        bool *global, bool print)
{
 int i = 0;
 u32 cur_bit = 0;
 for (i = 0; sig; i++) {
  cur_bit = ((u32)0x1 << i);
  if (sig & cur_bit) {
   switch (cur_bit) {
   case 131:
    if (print)
     _print_next_block(par_num++, "MCP ROM");
    *global = 1;
    break;
   case 129:
    if (print)
     _print_next_block(par_num++,
         "MCP UMP RX");
    *global = 1;
    break;
   case 128:
    if (print)
     _print_next_block(par_num++,
         "MCP UMP TX");
    *global = 1;
    break;
   case 130:
    if (print)
     _print_next_block(par_num++,
         "MCP SCPAD");
    *global = 1;
    break;
   }


   sig &= ~cur_bit;
  }
 }

 return par_num;
}
