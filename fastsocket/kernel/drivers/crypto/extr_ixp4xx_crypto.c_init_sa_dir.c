
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ix_sa_dir {int npe_ctx; int npe_ctx_phys; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int ctx_pool ;
 int dma_pool_alloc (int ,int ,int *) ;
 int reset_sa_dir (struct ix_sa_dir*) ;

__attribute__((used)) static int init_sa_dir(struct ix_sa_dir *dir)
{
 dir->npe_ctx = dma_pool_alloc(ctx_pool, GFP_KERNEL, &dir->npe_ctx_phys);
 if (!dir->npe_ctx) {
  return -ENOMEM;
 }
 reset_sa_dir(dir);
 return 0;
}
