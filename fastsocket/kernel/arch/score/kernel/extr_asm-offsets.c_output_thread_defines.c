
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int trap_no; int error_code; int cp0_baduaddr; int cp0_ema; int cp0_psr; int reg29; int reg21; int reg20; int reg19; int reg18; int reg17; int reg16; int reg15; int reg14; int reg13; int reg12; int reg3; int reg2; int reg0; } ;


 int BLANK () ;
 int COMMENT (char*) ;
 int OFFSET (int ,int ,int ) ;
 int THREAD_BADUADDR ;
 int THREAD_ECODE ;
 int THREAD_EMA ;
 int THREAD_PSR ;
 int THREAD_REG0 ;
 int THREAD_REG12 ;
 int THREAD_REG13 ;
 int THREAD_REG14 ;
 int THREAD_REG15 ;
 int THREAD_REG16 ;
 int THREAD_REG17 ;
 int THREAD_REG18 ;
 int THREAD_REG19 ;
 int THREAD_REG2 ;
 int THREAD_REG20 ;
 int THREAD_REG21 ;
 int THREAD_REG29 ;
 int THREAD_REG3 ;
 int THREAD_TRAPNO ;
 int task_struct ;
 TYPE_1__ thread ;

void output_thread_defines(void)
{
 COMMENT("SCORE specific thread_struct offsets.");
 OFFSET(THREAD_REG0, task_struct, thread.reg0);
 OFFSET(THREAD_REG2, task_struct, thread.reg2);
 OFFSET(THREAD_REG3, task_struct, thread.reg3);
 OFFSET(THREAD_REG12, task_struct, thread.reg12);
 OFFSET(THREAD_REG13, task_struct, thread.reg13);
 OFFSET(THREAD_REG14, task_struct, thread.reg14);
 OFFSET(THREAD_REG15, task_struct, thread.reg15);
 OFFSET(THREAD_REG16, task_struct, thread.reg16);
 OFFSET(THREAD_REG17, task_struct, thread.reg17);
 OFFSET(THREAD_REG18, task_struct, thread.reg18);
 OFFSET(THREAD_REG19, task_struct, thread.reg19);
 OFFSET(THREAD_REG20, task_struct, thread.reg20);
 OFFSET(THREAD_REG21, task_struct, thread.reg21);
 OFFSET(THREAD_REG29, task_struct, thread.reg29);

 OFFSET(THREAD_PSR, task_struct, thread.cp0_psr);
 OFFSET(THREAD_EMA, task_struct, thread.cp0_ema);
 OFFSET(THREAD_BADUADDR, task_struct, thread.cp0_baduaddr);
 OFFSET(THREAD_ECODE, task_struct, thread.error_code);
 OFFSET(THREAD_TRAPNO, task_struct, thread.trap_no);
 BLANK();
}
