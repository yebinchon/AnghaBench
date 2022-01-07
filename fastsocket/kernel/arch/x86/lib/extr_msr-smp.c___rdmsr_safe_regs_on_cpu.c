
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msr_regs_info {int regs; int err; } ;


 int rdmsr_safe_regs (int ) ;

__attribute__((used)) static void __rdmsr_safe_regs_on_cpu(void *info)
{
 struct msr_regs_info *rv = info;

 rv->err = rdmsr_safe_regs(rv->regs);
}
