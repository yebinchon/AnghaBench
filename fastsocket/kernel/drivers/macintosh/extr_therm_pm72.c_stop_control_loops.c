
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ctrl_complete ;
 scalar_t__ ctrl_task ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void stop_control_loops(void)
{
 if (ctrl_task)
  wait_for_completion(&ctrl_complete);
}
