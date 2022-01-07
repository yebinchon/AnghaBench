
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmcraid_instance {int * cmd_cachep; int ** cmd_list; } ;


 int kmem_cache_destroy (int *) ;
 int kmem_cache_free (int *,int *) ;

__attribute__((used)) static void
pmcraid_release_cmd_blocks(struct pmcraid_instance *pinstance, int max_index)
{
 int i;
 for (i = 0; i < max_index; i++) {
  kmem_cache_free(pinstance->cmd_cachep, pinstance->cmd_list[i]);
  pinstance->cmd_list[i] = ((void*)0);
 }
 kmem_cache_destroy(pinstance->cmd_cachep);
 pinstance->cmd_cachep = ((void*)0);
}
