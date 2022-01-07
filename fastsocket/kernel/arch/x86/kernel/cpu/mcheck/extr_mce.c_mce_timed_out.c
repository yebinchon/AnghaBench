
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ s64 ;


 scalar_t__ SPINUNIT ;
 scalar_t__ atomic_read (int *) ;
 int cpu_missing ;
 int mce_panic (char*,int *,int *) ;
 int mce_paniced ;
 int monarch_timeout ;
 int rmb () ;
 int tolerant ;
 int touch_nmi_watchdog () ;
 int wait_for_panic () ;

__attribute__((used)) static int mce_timed_out(u64 *t)
{






 rmb();
 if (atomic_read(&mce_paniced))
  wait_for_panic();
 if (!monarch_timeout)
  goto out;
 if ((s64)*t < SPINUNIT) {

  if (tolerant < 1)
   mce_panic("Timeout synchronizing machine check over CPUs",
      ((void*)0), ((void*)0));
  cpu_missing = 1;
  return 1;
 }
 *t -= SPINUNIT;
out:
 touch_nmi_watchdog();
 return 0;
}
