
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct ttm_tt {int * func; } ;
struct ttm_bo_device {int dummy; } ;
struct page {int dummy; } ;
struct TYPE_3__ {struct ttm_tt ttm; } ;
struct nouveau_sgdma_be {TYPE_1__ ttm; int dev; } ;
struct nouveau_drm {int device; int dev; } ;
struct TYPE_4__ {scalar_t__ card_type; } ;


 int GFP_KERNEL ;
 scalar_t__ NV_50 ;
 int kfree (struct nouveau_sgdma_be*) ;
 struct nouveau_sgdma_be* kzalloc (int,int ) ;
 struct nouveau_drm* nouveau_bdev (struct ttm_bo_device*) ;
 int nv04_sgdma_backend ;
 int nv50_sgdma_backend ;
 TYPE_2__* nv_device (int ) ;
 scalar_t__ ttm_dma_tt_init (TYPE_1__*,struct ttm_bo_device*,unsigned long,int ,struct page*) ;

struct ttm_tt *
nouveau_sgdma_create_ttm(struct ttm_bo_device *bdev,
    unsigned long size, uint32_t page_flags,
    struct page *dummy_read_page)
{
 struct nouveau_drm *drm = nouveau_bdev(bdev);
 struct nouveau_sgdma_be *nvbe;

 nvbe = kzalloc(sizeof(*nvbe), GFP_KERNEL);
 if (!nvbe)
  return ((void*)0);

 nvbe->dev = drm->dev;
 if (nv_device(drm->device)->card_type < NV_50)
  nvbe->ttm.ttm.func = &nv04_sgdma_backend;
 else
  nvbe->ttm.ttm.func = &nv50_sgdma_backend;

 if (ttm_dma_tt_init(&nvbe->ttm, bdev, size, page_flags, dummy_read_page)) {
  kfree(nvbe);
  return ((void*)0);
 }
 return &nvbe->ttm.ttm;
}
