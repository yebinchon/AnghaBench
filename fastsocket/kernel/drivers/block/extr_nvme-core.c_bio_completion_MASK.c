#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct nvme_iod {int /*<<< orphan*/  start_time; scalar_t__ nents; int /*<<< orphan*/  sg; struct bio* private; } ;
struct nvme_dev {TYPE_1__* pci_dev; } ;
struct nvme_completion {int /*<<< orphan*/  status; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  EIO ; 
 scalar_t__ FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nvme_dev*,struct nvme_iod*) ; 

__attribute__((used)) static void FUNC6(struct nvme_dev *dev, void *ctx,
						struct nvme_completion *cqe)
{
	struct nvme_iod *iod = ctx;
	struct bio *bio = iod->private;
	u16 status = FUNC3(&cqe->status) >> 1;

	if (iod->nents) {
		FUNC2(&dev->pci_dev->dev, iod->sg, iod->nents,
			FUNC0(bio) ? DMA_TO_DEVICE : DMA_FROM_DEVICE);
		FUNC4(bio, iod->start_time);
	}
	FUNC5(dev, iod);
	if (status)
		FUNC1(bio, -EIO);
	else
		FUNC1(bio, 0);
}