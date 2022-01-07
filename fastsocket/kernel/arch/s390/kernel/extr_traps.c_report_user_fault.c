
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int printk (char*,long) ;
 int show_regs (struct pt_regs*) ;
 int sysctl_userprocess_debug ;

__attribute__((used)) static void inline
report_user_fault(long interruption_code, struct pt_regs *regs)
{
}
