
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_mem_type_manager {int dummy; } ;
struct ttm_mem_reg {int * mm_node; } ;


 int kfree (int *) ;
 int nouveau_mem_node_cleanup (int *) ;

__attribute__((used)) static void
nouveau_gart_manager_del(struct ttm_mem_type_manager *man,
    struct ttm_mem_reg *mem)
{
 nouveau_mem_node_cleanup(mem->mm_node);
 kfree(mem->mm_node);
 mem->mm_node = ((void*)0);
}
