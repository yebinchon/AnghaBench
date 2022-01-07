
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qaob {int dummy; } ;


 int kmem_cache_free (int ,struct qaob*) ;
 int qdio_aob_cache ;

void qdio_release_aob(struct qaob *aob)
{
 kmem_cache_free(qdio_aob_cache, aob);
}
