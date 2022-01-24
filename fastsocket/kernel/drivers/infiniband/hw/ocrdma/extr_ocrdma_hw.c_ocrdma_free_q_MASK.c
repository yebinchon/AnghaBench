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
struct ocrdma_queue_info {int /*<<< orphan*/  dma; int /*<<< orphan*/  va; int /*<<< orphan*/  size; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct ocrdma_dev {TYPE_2__ nic_info; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct ocrdma_dev *dev, struct ocrdma_queue_info *q)
{
	FUNC0(&dev->nic_info.pdev->dev, q->size, q->va, q->dma);
}