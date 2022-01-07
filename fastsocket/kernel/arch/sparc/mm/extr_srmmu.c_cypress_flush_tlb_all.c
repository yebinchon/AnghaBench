
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int srmmu_flush_whole_tlb () ;

__attribute__((used)) static void cypress_flush_tlb_all(void)
{
 srmmu_flush_whole_tlb();
}
