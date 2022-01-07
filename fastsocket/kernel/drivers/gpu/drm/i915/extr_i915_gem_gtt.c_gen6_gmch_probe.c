
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int gtt_insert_entries; int gtt_clear_range; int gsm; int mappable_end; } ;
struct drm_i915_private {TYPE_1__ gtt; } ;
struct drm_device {int pdev; struct drm_i915_private* dev_private; } ;
typedef scalar_t__ phys_addr_t ;
typedef int gtt_pte_t ;


 int DMA_BIT_MASK (int) ;
 int DRM_ERROR (char*,...) ;
 int ENOMEM ;
 int ENXIO ;
 scalar_t__ IS_GEN7 (struct drm_device*) ;
 unsigned int PAGE_SHIFT ;
 int SNB_GMCH_CTRL ;
 size_t gen6_get_stolen_size (int ) ;
 unsigned int gen6_get_total_gtt_size (int ) ;
 int gen6_ggtt_clear_range ;
 int gen6_ggtt_insert_entries ;
 size_t gen7_get_stolen_size (int ) ;
 int ioremap_wc (scalar_t__,unsigned int) ;
 int pci_read_config_word (int ,int ,int *) ;
 unsigned long pci_resource_len (int ,int) ;
 scalar_t__ pci_resource_start (int ,int) ;
 int pci_set_consistent_dma_mask (int ,int ) ;
 int pci_set_dma_mask (int ,int ) ;
 int setup_scratch_page (struct drm_device*) ;

__attribute__((used)) static int gen6_gmch_probe(struct drm_device *dev,
      size_t *gtt_total,
      size_t *stolen,
      phys_addr_t *mappable_base,
      unsigned long *mappable_end)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 phys_addr_t gtt_bus_addr;
 unsigned int gtt_size;
 u16 snb_gmch_ctl;
 int ret;

 *mappable_base = pci_resource_start(dev->pdev, 2);
 *mappable_end = pci_resource_len(dev->pdev, 2);




 if ((*mappable_end < (64<<20) || (*mappable_end > (512<<20)))) {
  DRM_ERROR("Unknown GMADR size (%lx)\n",
     dev_priv->gtt.mappable_end);
  return -ENXIO;
 }

 if (!pci_set_dma_mask(dev->pdev, DMA_BIT_MASK(40)))
  pci_set_consistent_dma_mask(dev->pdev, DMA_BIT_MASK(40));
 pci_read_config_word(dev->pdev, SNB_GMCH_CTRL, &snb_gmch_ctl);
 gtt_size = gen6_get_total_gtt_size(snb_gmch_ctl);

 if (IS_GEN7(dev))
  *stolen = gen7_get_stolen_size(snb_gmch_ctl);
 else
  *stolen = gen6_get_stolen_size(snb_gmch_ctl);

 *gtt_total = (gtt_size / sizeof(gtt_pte_t)) << PAGE_SHIFT;


 gtt_bus_addr = pci_resource_start(dev->pdev, 0) + (2<<20);
 dev_priv->gtt.gsm = ioremap_wc(gtt_bus_addr, gtt_size);
 if (!dev_priv->gtt.gsm) {
  DRM_ERROR("Failed to map the gtt page table\n");
  return -ENOMEM;
 }

 ret = setup_scratch_page(dev);
 if (ret)
  DRM_ERROR("Scratch setup failed\n");

 dev_priv->gtt.gtt_clear_range = gen6_ggtt_clear_range;
 dev_priv->gtt.gtt_insert_entries = gen6_ggtt_insert_entries;

 return ret;
}
