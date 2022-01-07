
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BLANK () ;
 int COMMENT (char*) ;
 int DEFINE (int ,int ) ;
 int KERNEL_STACK_MASK ;
 int KERNEL_STACK_SIZE ;
 int OFFSET (int ,int ,int ) ;
 int THREAD_MASK ;
 int THREAD_SIZE ;
 int TI_ADDR_LIMIT ;
 int TI_CPU ;
 int TI_EXEC_DOMAIN ;
 int TI_FLAGS ;
 int TI_PRE_COUNT ;
 int TI_REGS ;
 int TI_RESTART_BLOCK ;
 int TI_TASK ;
 int TI_TP_VALUE ;
 int addr_limit ;
 int cpu ;
 int exec_domain ;
 int flags ;
 int preempt_count ;
 int regs ;
 int restart_block ;
 int task ;
 int thread_info ;
 int tp_value ;

void output_thread_info_defines(void)
{
 COMMENT("SCORE thread_info offsets.");
 OFFSET(TI_TASK, thread_info, task);
 OFFSET(TI_EXEC_DOMAIN, thread_info, exec_domain);
 OFFSET(TI_FLAGS, thread_info, flags);
 OFFSET(TI_TP_VALUE, thread_info, tp_value);
 OFFSET(TI_CPU, thread_info, cpu);
 OFFSET(TI_PRE_COUNT, thread_info, preempt_count);
 OFFSET(TI_ADDR_LIMIT, thread_info, addr_limit);
 OFFSET(TI_RESTART_BLOCK, thread_info, restart_block);
 OFFSET(TI_REGS, thread_info, regs);
 DEFINE(KERNEL_STACK_SIZE, THREAD_SIZE);
 DEFINE(KERNEL_STACK_MASK, THREAD_MASK);
 BLANK();
}
