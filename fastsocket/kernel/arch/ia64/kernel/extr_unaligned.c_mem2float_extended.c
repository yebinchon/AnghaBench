
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ia64_fpreg {int dummy; } ;


 int ia64_ldfe (int,struct ia64_fpreg*) ;
 int ia64_stf_spill (struct ia64_fpreg*,int) ;
 int ia64_stop () ;

__attribute__((used)) static inline void
mem2float_extended (struct ia64_fpreg *init, struct ia64_fpreg *final)
{
 ia64_ldfe(6, init);
 ia64_stop();
 ia64_stf_spill(final, 6);
}
