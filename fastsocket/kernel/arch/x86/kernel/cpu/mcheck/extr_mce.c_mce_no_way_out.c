
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
struct mce {int status; } ;


 scalar_t__ MCE_PANIC_SEVERITY ;
 int MCI_STATUS_VAL ;
 int MSR_IA32_MCx_STATUS (int) ;
 int __set_bit (int,unsigned long*) ;
 int banks ;
 int mce_rdmsrl (int ) ;
 scalar_t__ mce_severity (struct mce*,int ,char**) ;
 int quirk_no_way_out (int,struct mce*,struct pt_regs*) ;
 int tolerant ;

__attribute__((used)) static int mce_no_way_out(struct mce *m, char **msg, unsigned long *validp,
     struct pt_regs *regs)
{
 int i, ret = 0;

 for (i = 0; i < banks; i++) {
  m->status = mce_rdmsrl(MSR_IA32_MCx_STATUS(i));
  if (m->status & MCI_STATUS_VAL) {
   __set_bit(i, validp);
   if (quirk_no_way_out)
    quirk_no_way_out(i, m, regs);
  }
  if (mce_severity(m, tolerant, msg) >= MCE_PANIC_SEVERITY)
   ret = 1;
 }
 return ret;
}
