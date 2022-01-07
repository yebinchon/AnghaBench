
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct severity {int mask; int result; int mcgmask; int mcgres; scalar_t__ ser; int context; char* msg; int covered; scalar_t__ sev; } ;
struct mce {int status; int mcgstatus; } ;
typedef enum context { ____Placeholder_context } context ;


 int IN_KERNEL ;
 int MCE_PANIC_SEVERITY ;
 scalar_t__ MCE_UC_SEVERITY ;
 scalar_t__ NO_SER ;
 scalar_t__ SER_REQUIRED ;
 int error_context (struct mce*) ;
 scalar_t__ mce_ser ;
 scalar_t__ panic_on_oops ;
 struct severity* severities ;

int mce_severity(struct mce *m, int tolerant, char **msg)
{
 enum context ctx = error_context(m);
 struct severity *s;

 for (s = severities;; s++) {
  if ((m->status & s->mask) != s->result)
   continue;
  if ((m->mcgstatus & s->mcgmask) != s->mcgres)
   continue;
  if (s->ser == SER_REQUIRED && !mce_ser)
   continue;
  if (s->ser == NO_SER && mce_ser)
   continue;
  if (s->context && ctx != s->context)
   continue;
  if (msg)
   *msg = s->msg;
  s->covered = 1;
  if (s->sev >= MCE_UC_SEVERITY && ctx == IN_KERNEL) {
   if (panic_on_oops || tolerant < 1)
    return MCE_PANIC_SEVERITY;
  }
  return s->sev;
 }
}
