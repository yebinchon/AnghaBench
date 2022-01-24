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
struct mlx4_en_rx_ring {struct mlx4_en_rx_alloc* page_alloc; } ;
struct mlx4_en_rx_alloc {struct page* page; int /*<<< orphan*/  size; int /*<<< orphan*/  dma; } ;
struct mlx4_en_priv {int num_frags; int /*<<< orphan*/  ddev; struct mlx4_en_frag_info* frag_info; } ;
struct mlx4_en_frag_info {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct mlx4_en_priv*,struct mlx4_en_rx_alloc*,struct mlx4_en_frag_info const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 

__attribute__((used)) static int FUNC4(struct mlx4_en_priv *priv,
				  struct mlx4_en_rx_ring *ring)
{
	int i;
	struct mlx4_en_rx_alloc *page_alloc;

	for (i = 0; i < priv->num_frags; i++) {
		const struct mlx4_en_frag_info *frag_info = &priv->frag_info[i];

		if (FUNC2(priv, &ring->page_alloc[i],
				     frag_info, GFP_KERNEL))
			goto out;
	}
	return 0;

out:
	while (i--) {
		struct page *page;

		page_alloc = &ring->page_alloc[i];
		FUNC1(priv->ddev, page_alloc->dma,
			       page_alloc->size, PCI_DMA_FROMDEVICE);
		page = page_alloc->page;
		FUNC0(&page->_count, 1);
		FUNC3(page);
		page_alloc->page = NULL;
	}
	return -ENOMEM;
}