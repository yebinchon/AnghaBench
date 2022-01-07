
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_15__ {int vram_available; int gart_available; } ;
struct TYPE_10__ {int object; } ;
struct TYPE_11__ {TYPE_1__ ref; } ;
struct TYPE_14__ {int bdev; int mtrr; TYPE_2__ bo_global_ref; } ;
struct TYPE_13__ {scalar_t__ stat; int size; } ;
struct nouveau_drm {TYPE_6__ gem; TYPE_5__ ttm; TYPE_4__ agp; int device; struct drm_device* dev; } ;
struct drm_device {int pdev; } ;
struct TYPE_12__ {int size; } ;
struct TYPE_18__ {TYPE_3__ ram; } ;
struct TYPE_17__ {scalar_t__ reserved; } ;
struct TYPE_16__ {int dma_bits; int limit; } ;


 int DMA_BIT_MASK (int) ;
 int DRM_FILE_PAGE_OFFSET ;
 int DRM_MTRR_WC ;
 scalar_t__ ENABLED ;
 int NV_ERROR (struct nouveau_drm*,char*,int) ;
 int NV_INFO (struct nouveau_drm*,char*,int) ;
 int PAGE_SHIFT ;
 int TTM_PL_TT ;
 int TTM_PL_VRAM ;
 int drm_mtrr_add (int ,int ,int ) ;
 int nouveau_bo_driver ;
 TYPE_9__* nouveau_fb (int ) ;
 TYPE_8__* nouveau_instmem (int ) ;
 int nouveau_ttm_global_init (struct nouveau_drm*) ;
 TYPE_7__* nouveau_vmmgr (int ) ;
 int pci_dma_supported (int ,int ) ;
 int pci_resource_len (int ,int) ;
 int pci_resource_start (int ,int) ;
 int pci_set_consistent_dma_mask (int ,int ) ;
 int pci_set_dma_mask (int ,int ) ;
 int ttm_bo_device_init (int *,int ,int *,int ,int) ;
 int ttm_bo_init_mm (int *,int ,int) ;

int
nouveau_ttm_init(struct nouveau_drm *drm)
{
 struct drm_device *dev = drm->dev;
 u32 bits;
 int ret;

 bits = nouveau_vmmgr(drm->device)->dma_bits;
 if ( drm->agp.stat == ENABLED ||
     !pci_dma_supported(dev->pdev, DMA_BIT_MASK(bits)))
  bits = 32;

 ret = pci_set_dma_mask(dev->pdev, DMA_BIT_MASK(bits));
 if (ret)
  return ret;

 ret = pci_set_consistent_dma_mask(dev->pdev, DMA_BIT_MASK(bits));
 if (ret)
  pci_set_consistent_dma_mask(dev->pdev, DMA_BIT_MASK(32));

 ret = nouveau_ttm_global_init(drm);
 if (ret)
  return ret;

 ret = ttm_bo_device_init(&drm->ttm.bdev,
      drm->ttm.bo_global_ref.ref.object,
      &nouveau_bo_driver, DRM_FILE_PAGE_OFFSET,
      bits <= 32 ? 1 : 0);
 if (ret) {
  NV_ERROR(drm, "error initialising bo driver, %d\n", ret);
  return ret;
 }


 drm->gem.vram_available = nouveau_fb(drm->device)->ram.size;
 drm->gem.vram_available -= nouveau_instmem(drm->device)->reserved;

 ret = ttm_bo_init_mm(&drm->ttm.bdev, TTM_PL_VRAM,
         drm->gem.vram_available >> PAGE_SHIFT);
 if (ret) {
  NV_ERROR(drm, "VRAM mm init failed, %d\n", ret);
  return ret;
 }

 drm->ttm.mtrr = drm_mtrr_add(pci_resource_start(dev->pdev, 1),
         pci_resource_len(dev->pdev, 1),
         DRM_MTRR_WC);


 if (drm->agp.stat != ENABLED) {
  drm->gem.gart_available = nouveau_vmmgr(drm->device)->limit;
  if (drm->gem.gart_available > 512 * 1024 * 1024)
   drm->gem.gart_available = 512 * 1024 * 1024;
 } else {
  drm->gem.gart_available = drm->agp.size;
 }

 ret = ttm_bo_init_mm(&drm->ttm.bdev, TTM_PL_TT,
         drm->gem.gart_available >> PAGE_SHIFT);
 if (ret) {
  NV_ERROR(drm, "GART mm init failed, %d\n", ret);
  return ret;
 }

 NV_INFO(drm, "VRAM: %d MiB\n", (u32)(drm->gem.vram_available >> 20));
 NV_INFO(drm, "GART: %d MiB\n", (u32)(drm->gem.gart_available >> 20));
 return 0;
}
