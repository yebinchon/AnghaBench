
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fcr31; int * fpr; } ;
struct TYPE_4__ {TYPE_1__ fpu; } ;


 int BLANK () ;
 int OFFSET (int ,int ,int ) ;
 int THREAD_FCR31 ;
 int THREAD_FPR0 ;
 int THREAD_FPR1 ;
 int THREAD_FPR10 ;
 int THREAD_FPR11 ;
 int THREAD_FPR12 ;
 int THREAD_FPR13 ;
 int THREAD_FPR14 ;
 int THREAD_FPR15 ;
 int THREAD_FPR16 ;
 int THREAD_FPR17 ;
 int THREAD_FPR18 ;
 int THREAD_FPR19 ;
 int THREAD_FPR2 ;
 int THREAD_FPR20 ;
 int THREAD_FPR21 ;
 int THREAD_FPR22 ;
 int THREAD_FPR23 ;
 int THREAD_FPR24 ;
 int THREAD_FPR25 ;
 int THREAD_FPR26 ;
 int THREAD_FPR27 ;
 int THREAD_FPR28 ;
 int THREAD_FPR29 ;
 int THREAD_FPR3 ;
 int THREAD_FPR30 ;
 int THREAD_FPR31 ;
 int THREAD_FPR4 ;
 int THREAD_FPR5 ;
 int THREAD_FPR6 ;
 int THREAD_FPR7 ;
 int THREAD_FPR8 ;
 int THREAD_FPR9 ;
 int task_struct ;
 TYPE_2__ thread ;

void output_thread_fpu_defines(void)
{
 OFFSET(THREAD_FPR0, task_struct, thread.fpu.fpr[0]);
 OFFSET(THREAD_FPR1, task_struct, thread.fpu.fpr[1]);
 OFFSET(THREAD_FPR2, task_struct, thread.fpu.fpr[2]);
 OFFSET(THREAD_FPR3, task_struct, thread.fpu.fpr[3]);
 OFFSET(THREAD_FPR4, task_struct, thread.fpu.fpr[4]);
 OFFSET(THREAD_FPR5, task_struct, thread.fpu.fpr[5]);
 OFFSET(THREAD_FPR6, task_struct, thread.fpu.fpr[6]);
 OFFSET(THREAD_FPR7, task_struct, thread.fpu.fpr[7]);
 OFFSET(THREAD_FPR8, task_struct, thread.fpu.fpr[8]);
 OFFSET(THREAD_FPR9, task_struct, thread.fpu.fpr[9]);
 OFFSET(THREAD_FPR10, task_struct, thread.fpu.fpr[10]);
 OFFSET(THREAD_FPR11, task_struct, thread.fpu.fpr[11]);
 OFFSET(THREAD_FPR12, task_struct, thread.fpu.fpr[12]);
 OFFSET(THREAD_FPR13, task_struct, thread.fpu.fpr[13]);
 OFFSET(THREAD_FPR14, task_struct, thread.fpu.fpr[14]);
 OFFSET(THREAD_FPR15, task_struct, thread.fpu.fpr[15]);
 OFFSET(THREAD_FPR16, task_struct, thread.fpu.fpr[16]);
 OFFSET(THREAD_FPR17, task_struct, thread.fpu.fpr[17]);
 OFFSET(THREAD_FPR18, task_struct, thread.fpu.fpr[18]);
 OFFSET(THREAD_FPR19, task_struct, thread.fpu.fpr[19]);
 OFFSET(THREAD_FPR20, task_struct, thread.fpu.fpr[20]);
 OFFSET(THREAD_FPR21, task_struct, thread.fpu.fpr[21]);
 OFFSET(THREAD_FPR22, task_struct, thread.fpu.fpr[22]);
 OFFSET(THREAD_FPR23, task_struct, thread.fpu.fpr[23]);
 OFFSET(THREAD_FPR24, task_struct, thread.fpu.fpr[24]);
 OFFSET(THREAD_FPR25, task_struct, thread.fpu.fpr[25]);
 OFFSET(THREAD_FPR26, task_struct, thread.fpu.fpr[26]);
 OFFSET(THREAD_FPR27, task_struct, thread.fpu.fpr[27]);
 OFFSET(THREAD_FPR28, task_struct, thread.fpu.fpr[28]);
 OFFSET(THREAD_FPR29, task_struct, thread.fpu.fpr[29]);
 OFFSET(THREAD_FPR30, task_struct, thread.fpu.fpr[30]);
 OFFSET(THREAD_FPR31, task_struct, thread.fpu.fpr[31]);

 OFFSET(THREAD_FCR31, task_struct, thread.fpu.fcr31);
 BLANK();
}
