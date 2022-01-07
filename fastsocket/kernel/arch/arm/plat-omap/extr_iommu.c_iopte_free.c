
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int iopte_cachep ;
 int kmem_cache_free (int ,int *) ;

__attribute__((used)) static void iopte_free(u32 *iopte)
{

 kmem_cache_free(iopte_cachep, iopte);
}
