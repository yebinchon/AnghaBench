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
typedef  int u64 ;
struct TYPE_3__ {int /*<<< orphan*/  mtt_table; } ;
struct mlx4_priv {TYPE_1__ mr_table; } ;
struct mlx4_mtt {scalar_t__ offset; } ;
struct mlx4_dev {TYPE_2__* pdev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
typedef  int /*<<< orphan*/  __be64 ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ENOMEM ; 
 int MLX4_MTT_FLAG_PRESENT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct mlx4_priv* FUNC3 (struct mlx4_dev*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct mlx4_dev *dev, struct mlx4_mtt *mtt,
				int start_index, int npages, u64 *page_list)
{
	struct mlx4_priv *priv = FUNC3(dev);
	__be64 *mtts;
	dma_addr_t dma_handle;
	int i;

	mtts = FUNC4(&priv->mr_table.mtt_table, mtt->offset +
			       start_index, &dma_handle);

	if (!mtts)
		return -ENOMEM;

	FUNC1(&dev->pdev->dev, dma_handle,
				npages * sizeof (u64), DMA_TO_DEVICE);

	for (i = 0; i < npages; ++i)
		mtts[i] = FUNC0(page_list[i] | MLX4_MTT_FLAG_PRESENT);

	FUNC2(&dev->pdev->dev, dma_handle,
				   npages * sizeof (u64), DMA_TO_DEVICE);

	return 0;
}