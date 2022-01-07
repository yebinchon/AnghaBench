
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uncached_pool {int status; } ;


 int PAL_VISIBILITY_OK ;
 int PAL_VISIBILITY_OK_REMOTE_NEEDED ;
 int PAL_VISIBILITY_PHYSICAL ;
 int atomic_inc (int *) ;
 int ia64_pal_prefetch_visibility (int ) ;

__attribute__((used)) static void uncached_ipi_visibility(void *data)
{
 int status;
 struct uncached_pool *uc_pool = (struct uncached_pool *)data;

 status = ia64_pal_prefetch_visibility(PAL_VISIBILITY_PHYSICAL);
 if ((status != PAL_VISIBILITY_OK) &&
     (status != PAL_VISIBILITY_OK_REMOTE_NEEDED))
  atomic_inc(&uc_pool->status);
}
