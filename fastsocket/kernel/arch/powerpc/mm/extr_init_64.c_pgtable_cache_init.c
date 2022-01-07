
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PGD_TABLE_SIZE ;
 int PMD_TABLE_SIZE ;
 int SLAB_PANIC ;
 int kmem_cache_create (int ,int ,int ,int ,int ) ;
 int pgd_ctor ;
 int * pgtable_cache ;
 int * pgtable_cache_name ;
 int pmd_ctor ;

void pgtable_cache_init(void)
{
 pgtable_cache[0] = kmem_cache_create(pgtable_cache_name[0], PGD_TABLE_SIZE, PGD_TABLE_SIZE, SLAB_PANIC, pgd_ctor);
 pgtable_cache[1] = kmem_cache_create(pgtable_cache_name[1], PMD_TABLE_SIZE, PMD_TABLE_SIZE, SLAB_PANIC, pmd_ctor);
}
