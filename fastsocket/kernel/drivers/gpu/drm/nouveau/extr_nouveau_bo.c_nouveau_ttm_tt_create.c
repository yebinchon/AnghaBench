
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct ttm_tt {int dummy; } ;
struct ttm_bo_device {int dummy; } ;
struct page {int dummy; } ;
struct TYPE_3__ {scalar_t__ stat; } ;
struct nouveau_drm {TYPE_1__ agp; struct drm_device* dev; } ;
struct drm_device {TYPE_2__* agp; } ;
struct TYPE_4__ {int bridge; } ;


 scalar_t__ ENABLED ;
 struct nouveau_drm* nouveau_bdev (struct ttm_bo_device*) ;
 struct ttm_tt* nouveau_sgdma_create_ttm (struct ttm_bo_device*,unsigned long,int ,struct page*) ;
 struct ttm_tt* ttm_agp_tt_create (struct ttm_bo_device*,int ,unsigned long,int ,struct page*) ;

__attribute__((used)) static struct ttm_tt *
nouveau_ttm_tt_create(struct ttm_bo_device *bdev, unsigned long size,
        uint32_t page_flags, struct page *dummy_read)
{
 return nouveau_sgdma_create_ttm(bdev, size, page_flags, dummy_read);
}
