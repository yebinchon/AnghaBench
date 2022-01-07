
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sp; int pc; int erp; int spc; int exs; scalar_t__ eda; } ;


 int SIGINT ;
 int SIGTRAP ;
 int dynamic_bp ;
 int insn_size (int) ;
 TYPE_1__ reg ;

void register_fixup(int sigval)
{

 reg.sp += 4;


 reg.pc = reg.erp;
 if (reg.erp & 0x1) {

  if (reg.spc) {

   reg.pc = reg.spc;
  } else {


   reg.pc += insn_size(reg.erp & ~1) - 1 ;
  }
 }

 if ((reg.exs & 0x3) == 0x0) {



  reg.eda = 0;
 }

 if (sigval == SIGTRAP) {



  if (((reg.exs & 0xff00) >> 8) == 0x18) {
   if (!dynamic_bp) {

    dynamic_bp = 1;
   } else {


    if (!(reg.erp & 0x1)) {
     reg.erp -= 2;
     reg.pc -= 2;
    }
   }

  } else if (((reg.exs & 0xff00) >> 8) == 0x3) {



  } else if (((reg.exs & 0xff00) >> 8) == 0xc) {





   reg.spc = 0;


  }

 } else if (sigval == SIGINT) {

 }
}
