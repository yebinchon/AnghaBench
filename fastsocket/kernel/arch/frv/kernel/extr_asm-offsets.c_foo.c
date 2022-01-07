
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct user_int_regs {int dummy; } ;
struct user_fpmedia_regs {int dummy; } ;
struct user_context {int dummy; } ;
struct pt_regs {int dummy; } ;
struct frv_frame0 {int dummy; } ;
struct TYPE_7__ {int ** dbmr; int ** dbdr; int * dbar; int * ibar; int dcr; } ;
struct TYPE_6__ {struct TYPE_6__* fsr; struct TYPE_6__* accg; struct TYPE_6__* acc; struct TYPE_6__* msr; struct TYPE_6__* fner; struct TYPE_6__* fr; } ;
struct TYPE_5__ {int * gr; } ;


 int BLANK () ;
 int DEBUG_BPSR ;
 int DEBUG_BRR ;
 int DEBUG_DCR ;
 int DEBUG_NMAR ;
 int DEFINE (int ,int) ;
 int DEF_0REG (int ,int ) ;
 int DEF_FREG (int ,TYPE_2__) ;
 int DEF_IREG (int ,int ) ;
 int DEF_PTREG (int ,int ) ;
 int FRV_FRAME0_SIZE ;
 int NR_PT_REGS ;
 int NR_USER_CONTEXT ;
 int NR_USER_FPMEDIA_REGS ;
 int NR_USER_INT_REGS ;
 int OFFSET (int ,int ,int ) ;
 int REG_CCCR ;
 int REG_CCR ;
 int REG_DBAR0 ;
 int REG_DBDR00 ;
 int REG_DBMR00 ;
 int REG_DCR ;
 int REG_GNER0 ;
 int REG_GNER1 ;
 int REG_GR0 ;
 int REG_IACC0 ;
 int REG_IBAR0 ;
 int REG_ISR ;
 int REG_LCR ;
 int REG_LR ;
 int REG_ORIG_GR8 ;
 int REG_PC ;
 int REG_PSR ;
 int REG_SYSCALLNO ;
 int REG_TBR ;
 int REG__END ;
 int REG__STATUS ;
 int TI_ADDR_LIMIT ;
 int TI_CPU ;
 int TI_EXEC_DOMAIN ;
 int TI_FLAGS ;
 int TI_PREEMPT_COUNT ;
 int TI_RESTART_BLOCK ;
 int TI_STATUS ;
 int TI_TASK ;
 int __FPMEDIA_ACC0 ;
 int __FPMEDIA_ACCG0 ;
 int __FPMEDIA_FNER0 ;
 int __FPMEDIA_FR0 ;
 int __FPMEDIA_FSR0 ;
 int __FPMEDIA_MSR0 ;
 int __INT_GR0 ;
 int __THREAD_CURR ;
 int __THREAD_FP ;
 int __THREAD_FRAME ;
 int __THREAD_FRAME0 ;
 int __THREAD_GR16 ;
 int __THREAD_LR ;
 int __THREAD_PC ;
 int __THREAD_SCHED_LR ;
 int __THREAD_SP ;
 int __THREAD_USER ;
 int __USER_FPMEDIA ;
 int __status ;
 int addr_limit ;
 int bpsr ;
 int brr ;
 int cccr ;
 int ccr ;
 int cpu ;
 int curr ;
 int dcr ;
 TYPE_3__ debug ;
 int exec_domain ;
 TYPE_2__ f ;
 int flags ;
 int fp ;
 int frame ;
 int frame0 ;
 int frv_debug_status ;
 int gner0 ;
 int gner1 ;
 int * gr ;
 TYPE_1__ i ;
 int iacc0 ;
 int isr ;
 int lcr ;
 int lr ;
 int nmar ;
 int orig_gr8 ;
 int pc ;
 int preempt_count ;
 int psr ;
 int restart_block ;
 int sched_lr ;
 int sp ;
 int status ;
 int syscallno ;
 int task ;
 int tbr ;
 int thread_info ;
 int thread_struct ;
 int user ;

void foo(void)
{

 OFFSET(TI_TASK, thread_info, task);
 OFFSET(TI_EXEC_DOMAIN, thread_info, exec_domain);
 OFFSET(TI_FLAGS, thread_info, flags);
 OFFSET(TI_STATUS, thread_info, status);
 OFFSET(TI_CPU, thread_info, cpu);
 OFFSET(TI_PREEMPT_COUNT, thread_info, preempt_count);
 OFFSET(TI_ADDR_LIMIT, thread_info, addr_limit);
 OFFSET(TI_RESTART_BLOCK, thread_info, restart_block);
 BLANK();


 DEF_PTREG(REG_PSR, psr);
 DEF_PTREG(REG_ISR, isr);
 DEF_PTREG(REG_CCR, ccr);
 DEF_PTREG(REG_CCCR, cccr);
 DEF_PTREG(REG_LR, lr);
 DEF_PTREG(REG_LCR, lcr);
 DEF_PTREG(REG_PC, pc);
 DEF_PTREG(REG__STATUS, __status);
 DEF_PTREG(REG_SYSCALLNO, syscallno);
 DEF_PTREG(REG_ORIG_GR8, orig_gr8);
 DEF_PTREG(REG_GNER0, gner0);
 DEF_PTREG(REG_GNER1, gner1);
 DEF_PTREG(REG_IACC0, iacc0);
 DEF_PTREG(REG_TBR, tbr);
 DEF_PTREG(REG_GR0, tbr);
 DEFINE(REG__END, sizeof(struct pt_regs));
 BLANK();

 DEF_0REG(REG_DCR, debug.dcr);
 DEF_0REG(REG_IBAR0, debug.ibar[0]);
 DEF_0REG(REG_DBAR0, debug.dbar[0]);
 DEF_0REG(REG_DBDR00, debug.dbdr[0][0]);
 DEF_0REG(REG_DBMR00, debug.dbmr[0][0]);
 BLANK();

 DEF_IREG(__INT_GR0, i.gr[0]);
 DEF_FREG(__USER_FPMEDIA, f);
 DEF_FREG(__FPMEDIA_FR0, f.fr[0]);
 DEF_FREG(__FPMEDIA_FNER0, f.fner[0]);
 DEF_FREG(__FPMEDIA_MSR0, f.msr[0]);
 DEF_FREG(__FPMEDIA_ACC0, f.acc[0]);
 DEF_FREG(__FPMEDIA_ACCG0, f.accg[0]);
 DEF_FREG(__FPMEDIA_FSR0, f.fsr[0]);
 BLANK();

 DEFINE(NR_PT_REGS, sizeof(struct pt_regs) / 4);
 DEFINE(NR_USER_INT_REGS, sizeof(struct user_int_regs) / 4);
 DEFINE(NR_USER_FPMEDIA_REGS, sizeof(struct user_fpmedia_regs) / 4);
 DEFINE(NR_USER_CONTEXT, sizeof(struct user_context) / 4);
 DEFINE(FRV_FRAME0_SIZE, sizeof(struct frv_frame0));
 BLANK();


 OFFSET(__THREAD_FRAME, thread_struct, frame);
 OFFSET(__THREAD_CURR, thread_struct, curr);
 OFFSET(__THREAD_SP, thread_struct, sp);
 OFFSET(__THREAD_FP, thread_struct, fp);
 OFFSET(__THREAD_LR, thread_struct, lr);
 OFFSET(__THREAD_PC, thread_struct, pc);
 OFFSET(__THREAD_GR16, thread_struct, gr[0]);
 OFFSET(__THREAD_SCHED_LR, thread_struct, sched_lr);
 OFFSET(__THREAD_FRAME0, thread_struct, frame0);
 OFFSET(__THREAD_USER, thread_struct, user);
 BLANK();


 OFFSET(DEBUG_BPSR, frv_debug_status, bpsr);
 OFFSET(DEBUG_DCR, frv_debug_status, dcr);
 OFFSET(DEBUG_BRR, frv_debug_status, brr);
 OFFSET(DEBUG_NMAR, frv_debug_status, nmar);
 BLANK();
}
