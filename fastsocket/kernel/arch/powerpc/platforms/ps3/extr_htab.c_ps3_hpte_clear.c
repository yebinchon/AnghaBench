
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;


 int PS3_LPAR_VAS_ID_CURRENT ;
 int lv1_write_htab_entry (int ,unsigned long,int ,int ) ;
 unsigned long ppc64_pft_size ;
 int ps3_mm_shutdown () ;
 int ps3_mm_vas_destroy () ;

__attribute__((used)) static void ps3_hpte_clear(void)
{
 unsigned long hpte_count = (1UL << ppc64_pft_size) >> 4;
 u64 i;

 for (i = 0; i < hpte_count; i++)
  lv1_write_htab_entry(PS3_LPAR_VAS_ID_CURRENT, i, 0, 0);

 ps3_mm_shutdown();
 ps3_mm_vas_destroy();
}
