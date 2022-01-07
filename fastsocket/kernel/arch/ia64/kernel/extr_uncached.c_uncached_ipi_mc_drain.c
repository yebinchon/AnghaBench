
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uncached_pool {int status; } ;


 int PAL_STATUS_SUCCESS ;
 int atomic_inc (int *) ;
 int ia64_pal_mc_drain () ;

__attribute__((used)) static void uncached_ipi_mc_drain(void *data)
{
 int status;
 struct uncached_pool *uc_pool = (struct uncached_pool *)data;

 status = ia64_pal_mc_drain();
 if (status != PAL_STATUS_SUCCESS)
  atomic_inc(&uc_pool->status);
}
