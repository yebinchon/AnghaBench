
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IOPTE_TABLE_SIZE ;
 int clean_dcache_area (void*,int ) ;

__attribute__((used)) static void iopte_cachep_ctor(void *iopte)
{
 clean_dcache_area(iopte, IOPTE_TABLE_SIZE);
}
