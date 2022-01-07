
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ctrl_complete ;
 int ctrl_task ;
 int init_completion (int *) ;
 int kthread_run (int ,int *,char*) ;
 int main_control_loop ;

__attribute__((used)) static void start_control_loops(void)
{
 init_completion(&ctrl_complete);

 ctrl_task = kthread_run(main_control_loop, ((void*)0), "kfand");
}
