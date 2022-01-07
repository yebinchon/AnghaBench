
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgd_t ;


 int SRMMU_PTD_PMASK ;
 scalar_t__ __nocache_va (int) ;
 int pgd_val (int ) ;
 scalar_t__ srmmu_device_memory (int) ;

__attribute__((used)) static inline unsigned long srmmu_pgd_page(pgd_t pgd)
{ return srmmu_device_memory(pgd_val(pgd))?~0:(unsigned long)__nocache_va((pgd_val(pgd) & SRMMU_PTD_PMASK) << 4); }
