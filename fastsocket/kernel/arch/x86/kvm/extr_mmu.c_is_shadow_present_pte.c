
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 scalar_t__ shadow_notrap_nonpresent_pte ;
 scalar_t__ shadow_trap_nonpresent_pte ;

__attribute__((used)) static int is_shadow_present_pte(u64 pte)
{
 return pte != shadow_trap_nonpresent_pte
  && pte != shadow_notrap_nonpresent_pte;
}
