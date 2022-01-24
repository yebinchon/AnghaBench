#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct drm_device {int dummy; } ;
typedef  int /*<<< orphan*/  gtt_pte_t ;
typedef  enum i915_cache_level { ____Placeholder_i915_cache_level } i915_cache_level ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GEN6_PTE_CACHE_LLC ; 
 int /*<<< orphan*/  GEN6_PTE_CACHE_LLC_MLC ; 
 int /*<<< orphan*/  GEN6_PTE_UNCACHED ; 
 int /*<<< orphan*/  GEN6_PTE_VALID ; 
 int /*<<< orphan*/  HSW_PTE_UNCACHED ; 
#define  I915_CACHE_LLC 130 
#define  I915_CACHE_LLC_MLC 129 
#define  I915_CACHE_NONE 128 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 

__attribute__((used)) static inline gtt_pte_t FUNC3(struct drm_device *dev,
					dma_addr_t addr,
					enum i915_cache_level level)
{
	gtt_pte_t pte = GEN6_PTE_VALID;
	pte |= FUNC1(addr);

	switch (level) {
	case I915_CACHE_LLC_MLC:
		/* Haswell doesn't set L3 this way */
		if (FUNC2(dev))
			pte |= GEN6_PTE_CACHE_LLC;
		else
			pte |= GEN6_PTE_CACHE_LLC_MLC;
		break;
	case I915_CACHE_LLC:
		pte |= GEN6_PTE_CACHE_LLC;
		break;
	case I915_CACHE_NONE:
		if (FUNC2(dev))
			pte |= HSW_PTE_UNCACHED;
		else
			pte |= GEN6_PTE_UNCACHED;
		break;
	default:
		FUNC0();
	}


	return pte;
}