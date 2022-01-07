
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ia64_fpreg {int dummy; } ;


 int ia64_stf_spill (struct ia64_fpreg*,int) ;

__attribute__((used)) static inline void
float_spill_f1 (struct ia64_fpreg *final)
{
 ia64_stf_spill(final, 1);
}
