
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;
typedef int gtt_pte_t ;
typedef enum i915_cache_level { ____Placeholder_i915_cache_level } i915_cache_level ;
typedef int dma_addr_t ;


 int BUG () ;
 int GEN6_PTE_ADDR_ENCODE (int ) ;
 int GEN6_PTE_CACHE_LLC ;
 int GEN6_PTE_CACHE_LLC_MLC ;
 int GEN6_PTE_UNCACHED ;
 int GEN6_PTE_VALID ;
 int HSW_PTE_UNCACHED ;



 int IS_HASWELL (struct drm_device*) ;

__attribute__((used)) static inline gtt_pte_t gen6_pte_encode(struct drm_device *dev,
     dma_addr_t addr,
     enum i915_cache_level level)
{
 gtt_pte_t pte = GEN6_PTE_VALID;
 pte |= GEN6_PTE_ADDR_ENCODE(addr);

 switch (level) {
 case 129:

  if (IS_HASWELL(dev))
   pte |= GEN6_PTE_CACHE_LLC;
  else
   pte |= GEN6_PTE_CACHE_LLC_MLC;
  break;
 case 130:
  pte |= GEN6_PTE_CACHE_LLC;
  break;
 case 128:
  if (IS_HASWELL(dev))
   pte |= HSW_PTE_UNCACHED;
  else
   pte |= GEN6_PTE_UNCACHED;
  break;
 default:
  BUG();
 }


 return pte;
}
