
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RR6 ;
 int ia64_set_rr (int ,unsigned long) ;
 int ia64_srlz_i () ;

__attribute__((used)) static inline void vti_set_rr6(unsigned long rr6)
{
 ia64_set_rr(RR6, rr6);
 ia64_srlz_i();
}
