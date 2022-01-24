#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct skb_frag_struct {int size; int /*<<< orphan*/  page; int /*<<< orphan*/  page_offset; } ;
struct sk_buff {int /*<<< orphan*/  truesize; } ;
struct mlx4_en_rx_desc {TYPE_1__* data; } ;
struct mlx4_en_rx_alloc {int /*<<< orphan*/ * page; int /*<<< orphan*/  offset; } ;
struct mlx4_en_priv {int num_frags; struct mlx4_en_frag_info* frag_info; int /*<<< orphan*/  ddev; } ;
struct mlx4_en_frag_info {int frag_prefix_size; scalar_t__ frag_stride; int /*<<< orphan*/  frag_size; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_4__ {struct skb_frag_struct* frags; } ;
struct TYPE_3__ {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct skb_frag_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct skb_frag_struct*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC6(struct mlx4_en_priv *priv,
				    struct mlx4_en_rx_desc *rx_desc,
				    struct mlx4_en_rx_alloc *frags,
				    struct sk_buff *skb,
				    int length)
{
	struct skb_frag_struct *skb_frags_rx = FUNC5(skb)->frags;
	struct mlx4_en_frag_info *frag_info;
	int nr;
	dma_addr_t dma;

	/* Collect used fragments while replacing them in the HW descriptors */
	for (nr = 0; nr < priv->num_frags; nr++) {
		frag_info = &priv->frag_info[nr];
		if (length <= frag_info->frag_prefix_size)
			break;
		if (!frags[nr].page)
			goto fail;

		dma = FUNC1(rx_desc->data[nr].addr);
		FUNC2(priv->ddev, dma, frag_info->frag_size,
					DMA_FROM_DEVICE);

		/* Save page reference in skb */
		FUNC0(&skb_frags_rx[nr], frags[nr].page);
		FUNC4(&skb_frags_rx[nr], frag_info->frag_size);
		skb_frags_rx[nr].page_offset = frags[nr].offset;
		skb->truesize += frag_info->frag_stride;
		frags[nr].page = NULL;
	}
	/* Adjust size of last fragment to match actual length */
	if (nr > 0)
		skb_frags_rx[nr - 1].size = length -
			priv->frag_info[nr - 1].frag_prefix_size;
	return nr;

fail:
	while (nr > 0) {
		nr--;
		FUNC3(skb_frags_rx[nr].page);
	}
	return 0;
}