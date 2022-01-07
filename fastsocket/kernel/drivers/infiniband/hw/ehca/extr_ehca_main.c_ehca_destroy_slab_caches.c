
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ctblk_cache ;
 int ehca_cleanup_av_cache () ;
 int ehca_cleanup_cq_cache () ;
 int ehca_cleanup_mrmw_cache () ;
 int ehca_cleanup_pd_cache () ;
 int ehca_cleanup_qp_cache () ;
 int ehca_cleanup_small_qp_cache () ;
 int kmem_cache_destroy (scalar_t__) ;

__attribute__((used)) static void ehca_destroy_slab_caches(void)
{
 ehca_cleanup_small_qp_cache();
 ehca_cleanup_mrmw_cache();
 ehca_cleanup_av_cache();
 ehca_cleanup_qp_cache();
 ehca_cleanup_cq_cache();
 ehca_cleanup_pd_cache();




}
