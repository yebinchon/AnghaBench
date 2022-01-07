
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int irix_oldctx; int irix_trampoline; int trap_no; int error_code; int cp0_baduaddr; int cp0_badvaddr; int fpu; int cp0_status; int reg31; int reg30; int reg29; int reg23; int reg22; int reg21; int reg20; int reg19; int reg18; int reg17; int reg16; } ;


 int BLANK () ;
 int COMMENT (char*) ;
 int OFFSET (int ,int ,int ) ;
 int THREAD_BUADDR ;
 int THREAD_BVADDR ;
 int THREAD_ECODE ;
 int THREAD_FPU ;
 int THREAD_OLDCTX ;
 int THREAD_REG16 ;
 int THREAD_REG17 ;
 int THREAD_REG18 ;
 int THREAD_REG19 ;
 int THREAD_REG20 ;
 int THREAD_REG21 ;
 int THREAD_REG22 ;
 int THREAD_REG23 ;
 int THREAD_REG29 ;
 int THREAD_REG30 ;
 int THREAD_REG31 ;
 int THREAD_STATUS ;
 int THREAD_TRAMP ;
 int THREAD_TRAPNO ;
 int task_struct ;
 TYPE_1__ thread ;

void output_thread_defines(void)
{
 COMMENT("MIPS specific thread_struct offsets.");
 OFFSET(THREAD_REG16, task_struct, thread.reg16);
 OFFSET(THREAD_REG17, task_struct, thread.reg17);
 OFFSET(THREAD_REG18, task_struct, thread.reg18);
 OFFSET(THREAD_REG19, task_struct, thread.reg19);
 OFFSET(THREAD_REG20, task_struct, thread.reg20);
 OFFSET(THREAD_REG21, task_struct, thread.reg21);
 OFFSET(THREAD_REG22, task_struct, thread.reg22);
 OFFSET(THREAD_REG23, task_struct, thread.reg23);
 OFFSET(THREAD_REG29, task_struct, thread.reg29);
 OFFSET(THREAD_REG30, task_struct, thread.reg30);
 OFFSET(THREAD_REG31, task_struct, thread.reg31);
 OFFSET(THREAD_STATUS, task_struct,
        thread.cp0_status);
 OFFSET(THREAD_FPU, task_struct, thread.fpu);

 OFFSET(THREAD_BVADDR, task_struct, thread.cp0_badvaddr);

 OFFSET(THREAD_BUADDR, task_struct, thread.cp0_baduaddr);

 OFFSET(THREAD_ECODE, task_struct, thread.error_code);

 OFFSET(THREAD_TRAPNO, task_struct, thread.trap_no);
 OFFSET(THREAD_TRAMP, task_struct, thread.irix_trampoline);

 OFFSET(THREAD_OLDCTX, task_struct, thread.irix_oldctx);

 BLANK();
}
