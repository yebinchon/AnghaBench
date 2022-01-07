
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_context {int mapping_lock; scalar_t__ psmap; scalar_t__ mss; scalar_t__ signal2; scalar_t__ signal1; scalar_t__ cntl; scalar_t__ mfc; scalar_t__ local_store; } ;


 int LS_SIZE ;
 int SPUFS_CNTL_MAP_SIZE ;
 int SPUFS_MFC_MAP_SIZE ;
 int SPUFS_MSS_MAP_SIZE ;
 int SPUFS_PS_MAP_SIZE ;
 int SPUFS_SIGNAL_MAP_SIZE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int unmap_mapping_range (scalar_t__,int ,int ,int) ;

void spu_unmap_mappings(struct spu_context *ctx)
{
 mutex_lock(&ctx->mapping_lock);
 if (ctx->local_store)
  unmap_mapping_range(ctx->local_store, 0, LS_SIZE, 1);
 if (ctx->mfc)
  unmap_mapping_range(ctx->mfc, 0, SPUFS_MFC_MAP_SIZE, 1);
 if (ctx->cntl)
  unmap_mapping_range(ctx->cntl, 0, SPUFS_CNTL_MAP_SIZE, 1);
 if (ctx->signal1)
  unmap_mapping_range(ctx->signal1, 0, SPUFS_SIGNAL_MAP_SIZE, 1);
 if (ctx->signal2)
  unmap_mapping_range(ctx->signal2, 0, SPUFS_SIGNAL_MAP_SIZE, 1);
 if (ctx->mss)
  unmap_mapping_range(ctx->mss, 0, SPUFS_MSS_MAP_SIZE, 1);
 if (ctx->psmap)
  unmap_mapping_range(ctx->psmap, 0, SPUFS_PS_MAP_SIZE, 1);
 mutex_unlock(&ctx->mapping_lock);
}
