
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int old_k1; int old_iob; void* fdr; void* fir; void* fcr; void* fsr; void* eflag; } ;
struct task_struct {TYPE_1__ thread; } ;


 int IA64_KR_IO_BASE ;
 int IA64_KR_TSSD ;
 int _IA64_REG_AR_EFLAG ;
 int _IA64_REG_AR_FCR ;
 int _IA64_REG_AR_FDR ;
 int _IA64_REG_AR_FIR ;
 int _IA64_REG_AR_FSR ;
 void* ia64_getreg (int ) ;
 int ia64_set_kr (int ,int ) ;

void
ia32_save_state (struct task_struct *t)
{
 t->thread.eflag = ia64_getreg(_IA64_REG_AR_EFLAG);
 t->thread.fsr = ia64_getreg(_IA64_REG_AR_FSR);
 t->thread.fcr = ia64_getreg(_IA64_REG_AR_FCR);
 t->thread.fir = ia64_getreg(_IA64_REG_AR_FIR);
 t->thread.fdr = ia64_getreg(_IA64_REG_AR_FDR);
 ia64_set_kr(IA64_KR_IO_BASE, t->thread.old_iob);
 ia64_set_kr(IA64_KR_TSSD, t->thread.old_k1);
}
