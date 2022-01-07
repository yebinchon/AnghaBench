
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehca_mr {int dummy; } ;


 int kmem_cache_free (int ,struct ehca_mr*) ;
 int mr_cache ;

__attribute__((used)) static void ehca_mr_delete(struct ehca_mr *me)
{
 kmem_cache_free(mr_cache, me);
}
