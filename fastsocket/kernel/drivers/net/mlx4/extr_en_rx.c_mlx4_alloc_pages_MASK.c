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
struct page {int /*<<< orphan*/  _count; } ;
struct mlx4_en_rx_alloc {int size; int /*<<< orphan*/  offset; int /*<<< orphan*/  dma; struct page* page; } ;
struct mlx4_en_priv {int /*<<< orphan*/  ddev; } ;
struct mlx4_en_frag_info {int frag_size; int frag_stride; int /*<<< orphan*/  frag_align; } ;
typedef  int gfp_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int ENOMEM ; 
 int MLX4_EN_ALLOC_PREFER_ORDER ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int __GFP_COMP ; 
 int __GFP_NOWARN ; 
 struct page* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct page*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 

__attribute__((used)) static int FUNC6(struct mlx4_en_priv *priv,
			    struct mlx4_en_rx_alloc *page_alloc,
			    const struct mlx4_en_frag_info *frag_info,
			    gfp_t _gfp)
{
	int order;
	struct page *page;
	dma_addr_t dma;

	for (order = MLX4_EN_ALLOC_PREFER_ORDER; ;) {
		gfp_t gfp = _gfp;

		if (order)
			gfp |= __GFP_COMP | __GFP_NOWARN;
		page = FUNC0(gfp, order);
		if (FUNC4(page))
			break;
		if (--order < 0 ||
		    ((PAGE_SIZE << order) < frag_info->frag_size))
			return -ENOMEM;
	}
	dma = FUNC2(priv->ddev, page, 0, PAGE_SIZE << order,
			   PCI_DMA_FROMDEVICE);
	if (FUNC3(priv->ddev, dma)) {
		FUNC5(page);
		return -ENOMEM;
	}
	page_alloc->size = PAGE_SIZE << order;
	page_alloc->page = page;
	page_alloc->dma = dma;
	page_alloc->offset = frag_info->frag_align;
	/* Not doing get_page() for each frag is a big win
	 * on asymetric workloads.
	 */
	FUNC1(&page->_count, page_alloc->size / frag_info->frag_stride);
	return 0;
}