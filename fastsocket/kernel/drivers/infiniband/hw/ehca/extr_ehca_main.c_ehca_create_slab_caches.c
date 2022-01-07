
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EHCA_PAGESIZE ;
 int H_CB_ALIGNMENT ;
 int SLAB_HWCACHE_ALIGN ;
 int ctblk_cache ;
 int ehca_cleanup_av_cache () ;
 int ehca_cleanup_cq_cache () ;
 int ehca_cleanup_mrmw_cache () ;
 int ehca_cleanup_pd_cache () ;
 int ehca_cleanup_qp_cache () ;
 int ehca_cleanup_small_qp_cache () ;
 int ehca_gen_err (char*) ;
 int ehca_init_av_cache () ;
 int ehca_init_cq_cache () ;
 int ehca_init_mrmw_cache () ;
 int ehca_init_pd_cache () ;
 int ehca_init_qp_cache () ;
 int ehca_init_small_qp_cache () ;
 int kmem_cache_create (char*,int ,int ,int ,int *) ;

__attribute__((used)) static int ehca_create_slab_caches(void)
{
 int ret;

 ret = ehca_init_pd_cache();
 if (ret) {
  ehca_gen_err("Cannot create PD SLAB cache.");
  return ret;
 }

 ret = ehca_init_cq_cache();
 if (ret) {
  ehca_gen_err("Cannot create CQ SLAB cache.");
  goto create_slab_caches2;
 }

 ret = ehca_init_qp_cache();
 if (ret) {
  ehca_gen_err("Cannot create QP SLAB cache.");
  goto create_slab_caches3;
 }

 ret = ehca_init_av_cache();
 if (ret) {
  ehca_gen_err("Cannot create AV SLAB cache.");
  goto create_slab_caches4;
 }

 ret = ehca_init_mrmw_cache();
 if (ret) {
  ehca_gen_err("Cannot create MR&MW SLAB cache.");
  goto create_slab_caches5;
 }

 ret = ehca_init_small_qp_cache();
 if (ret) {
  ehca_gen_err("Cannot create small queue SLAB cache.");
  goto create_slab_caches6;
 }
 return 0;

create_slab_caches6:
 ehca_cleanup_mrmw_cache();

create_slab_caches5:
 ehca_cleanup_av_cache();

create_slab_caches4:
 ehca_cleanup_qp_cache();

create_slab_caches3:
 ehca_cleanup_cq_cache();

create_slab_caches2:
 ehca_cleanup_pd_cache();

 return ret;
}
