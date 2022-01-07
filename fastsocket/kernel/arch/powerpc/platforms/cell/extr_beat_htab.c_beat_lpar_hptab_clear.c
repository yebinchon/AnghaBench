
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int beat_write_htab_entry (int ,int,int ,int ,unsigned long,unsigned long,int *,int *) ;
 unsigned long ppc64_pft_size ;

__attribute__((used)) static void beat_lpar_hptab_clear(void)
{
 unsigned long size_bytes = 1UL << ppc64_pft_size;
 unsigned long hpte_count = size_bytes >> 4;
 int i;
 u64 dummy0, dummy1;


 for (i = 0; i < hpte_count; i++)
  beat_write_htab_entry(0, i, 0, 0, -1UL, -1UL, &dummy0, &dummy1);
}
