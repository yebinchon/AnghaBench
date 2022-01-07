
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ia64_sal_retval {unsigned long v0; unsigned long v1; long status; } ;


 int SAL_CALL (struct ia64_sal_retval,int ,unsigned long,int ,int ,int ,int ,int ,int ) ;
 int SAL_FREQ_BASE ;

long
ia64_sal_freq_base (unsigned long which, unsigned long *ticks_per_second,
      unsigned long *drift_info)
{
 struct ia64_sal_retval isrv;

 SAL_CALL(isrv, SAL_FREQ_BASE, which, 0, 0, 0, 0, 0, 0);
 *ticks_per_second = isrv.v0;
 *drift_info = isrv.v1;
 return isrv.status;
}
