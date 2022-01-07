
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtas_error_log {int dummy; } ;
struct pt_regs {int dummy; } ;


 scalar_t__ fwnmi_active ;
 struct rtas_error_log* fwnmi_get_errinfo (struct pt_regs*) ;
 int fwnmi_release_errinfo () ;

int pSeries_system_reset_exception(struct pt_regs *regs)
{
 if (fwnmi_active) {
  struct rtas_error_log *errhdr = fwnmi_get_errinfo(regs);
  if (errhdr) {

  }
  fwnmi_release_errinfo();
 }
 return 0;
}
