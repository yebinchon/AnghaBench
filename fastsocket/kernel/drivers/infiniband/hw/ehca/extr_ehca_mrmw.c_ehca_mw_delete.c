
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehca_mw {int dummy; } ;


 int kmem_cache_free (int ,struct ehca_mw*) ;
 int mw_cache ;

__attribute__((used)) static void ehca_mw_delete(struct ehca_mw *me)
{
 kmem_cache_free(mw_cache, me);
}
