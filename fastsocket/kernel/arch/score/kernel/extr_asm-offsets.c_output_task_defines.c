
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int BLANK () ;
 int COMMENT (char*) ;
 int DEFINE (int ,int) ;
 int OFFSET (int ,int ,int ) ;
 int TASK_FLAGS ;
 int TASK_MM ;
 int TASK_PID ;
 int TASK_STATE ;
 int TASK_STRUCT_SIZE ;
 int TASK_THREAD_INFO ;
 int flags ;
 int mm ;
 int pid ;
 int stack ;
 int state ;
 int task_struct ;

void output_task_defines(void)
{
 COMMENT("SCORE task_struct offsets.");
 OFFSET(TASK_STATE, task_struct, state);
 OFFSET(TASK_THREAD_INFO, task_struct, stack);
 OFFSET(TASK_FLAGS, task_struct, flags);
 OFFSET(TASK_MM, task_struct, mm);
 OFFSET(TASK_PID, task_struct, pid);
 DEFINE(TASK_STRUCT_SIZE, sizeof(struct task_struct));
 BLANK();
}
