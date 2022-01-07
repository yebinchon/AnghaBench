
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unw_frame_info {int dummy; } ;


 int current ;
 int do_copy_task_regs (int ,struct unw_frame_info*,void*) ;

void
do_copy_regs (struct unw_frame_info *info, void *arg)
{
 do_copy_task_regs(current, info, arg);
}
