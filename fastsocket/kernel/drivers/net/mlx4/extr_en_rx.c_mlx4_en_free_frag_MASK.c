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
typedef  scalar_t__ u32 ;
struct mlx4_en_rx_alloc {scalar_t__ offset; scalar_t__ size; scalar_t__ page; int /*<<< orphan*/  dma; } ;
struct mlx4_en_priv {int /*<<< orphan*/  ddev; struct mlx4_en_frag_info* frag_info; } ;
struct mlx4_en_frag_info {int frag_stride; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct mlx4_en_priv *priv,
			      struct mlx4_en_rx_alloc *frags,
			      int i)
{
	const struct mlx4_en_frag_info *frag_info = &priv->frag_info[i];
	u32 next_frag_end = frags[i].offset + 2 * frag_info->frag_stride;

	if (next_frag_end > frags[i].size)
		FUNC0(priv->ddev, frags[i].dma, frags[i].size,
					 PCI_DMA_FROMDEVICE);

	if (frags[i].page)
		FUNC1(frags[i].page);
}