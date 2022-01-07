
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cheetah_err_info {int dummy; } ;


 unsigned long CHAFSR_TL1 ;
 struct cheetah_err_info* cheetah_error_log ;
 int smp_processor_id () ;

__attribute__((used)) static inline struct cheetah_err_info *cheetah_get_error_log(unsigned long afsr)
{
 struct cheetah_err_info *p;
 int cpu = smp_processor_id();

 if (!cheetah_error_log)
  return ((void*)0);

 p = cheetah_error_log + (cpu * 2);
 if ((afsr & CHAFSR_TL1) != 0UL)
  p++;

 return p;
}
