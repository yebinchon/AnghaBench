
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int CPU_PROFILING ;
 int cris_profile_sample (struct pt_regs*) ;
 int profile_tick (int ) ;

void
cris_do_profile(struct pt_regs* regs)
{
}
