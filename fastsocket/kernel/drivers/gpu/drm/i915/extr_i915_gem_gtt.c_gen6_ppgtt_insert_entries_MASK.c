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
struct sg_table {unsigned int nents; struct scatterlist* sgl; } ;
struct scatterlist {int dummy; } ;
struct i915_hw_ppgtt {int /*<<< orphan*/  dev; int /*<<< orphan*/ * pt_pages; } ;
typedef  int /*<<< orphan*/  gtt_pte_t ;
typedef  enum i915_cache_level { ____Placeholder_i915_cache_level } i915_cache_level ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 unsigned int I915_PPGTT_PT_ENTRIES ; 
 int /*<<< orphan*/  KM_USER0 ; 
 unsigned int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct scatterlist*) ; 
 unsigned int FUNC4 (struct scatterlist*) ; 
 struct scatterlist* FUNC5 (struct scatterlist*) ; 

__attribute__((used)) static void FUNC6(struct i915_hw_ppgtt *ppgtt,
				      struct sg_table *pages,
				      unsigned first_entry,
				      enum i915_cache_level cache_level)
{
	gtt_pte_t *pt_vaddr;
	unsigned act_pd = first_entry / I915_PPGTT_PT_ENTRIES;
	unsigned first_pte = first_entry % I915_PPGTT_PT_ENTRIES;
	unsigned i, j, m, segment_len;
	dma_addr_t page_addr;
	struct scatterlist *sg;

	/* init sg walking */
	sg = pages->sgl;
	i = 0;
	segment_len = FUNC4(sg) >> PAGE_SHIFT;
	m = 0;

	while (i < pages->nents) {
		pt_vaddr = FUNC1(ppgtt->pt_pages[act_pd], KM_USER0);

		for (j = first_pte; j < I915_PPGTT_PT_ENTRIES; j++) {
			page_addr = FUNC3(sg) + (m << PAGE_SHIFT);
			pt_vaddr[j] = FUNC0(ppgtt->dev, page_addr,
						      cache_level);

			/* grab the next page */
			if (++m == segment_len) {
				if (++i == pages->nents)
					break;

				sg = FUNC5(sg);
				segment_len = FUNC4(sg) >> PAGE_SHIFT;
				m = 0;
			}
		}

		FUNC2(pt_vaddr, KM_USER0);

		first_pte = 0;
		act_pd++;
	}
}