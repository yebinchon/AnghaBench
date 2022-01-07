
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_exception {int dummy; } ;


 int exception_cache ;
 int kmem_cache_free (int ,struct dm_exception*) ;

__attribute__((used)) static void free_completed_exception(struct dm_exception *e)
{
 kmem_cache_free(exception_cache, e);
}
