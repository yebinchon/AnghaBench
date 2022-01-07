
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int is_shadow_present_pte (int ) ;

__attribute__((used)) static int is_rmap_spte(u64 pte)
{
 return is_shadow_present_pte(pte);
}
