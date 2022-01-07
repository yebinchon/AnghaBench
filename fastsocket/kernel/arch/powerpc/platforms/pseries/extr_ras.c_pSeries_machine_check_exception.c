
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtas_error_log {int dummy; } ;
struct pt_regs {int dummy; } ;


 scalar_t__ fwnmi_active ;
 struct rtas_error_log* fwnmi_get_errinfo (struct pt_regs*) ;
 int fwnmi_release_errinfo () ;
 scalar_t__ recover_mce (struct pt_regs*,struct rtas_error_log*) ;

int pSeries_machine_check_exception(struct pt_regs *regs)
{
 struct rtas_error_log *errp;

 if (fwnmi_active) {
  errp = fwnmi_get_errinfo(regs);
  fwnmi_release_errinfo();
  if (errp && recover_mce(regs, errp))
   return 1;
 }

 return 0;
}
