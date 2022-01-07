
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unwind_frame_info {int dummy; } ;
struct pt_regs {int dummy; } ;


 int current ;
 int unwind_frame_init (struct unwind_frame_info*,int ,struct pt_regs*) ;

void unwind_frame_init_running(struct unwind_frame_info *info, struct pt_regs *regs)
{
 unwind_frame_init(info, current, regs);
}
