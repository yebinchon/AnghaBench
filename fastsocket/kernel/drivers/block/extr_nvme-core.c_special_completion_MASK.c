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
struct nvme_dev {TYPE_1__* pci_dev; } ;
struct nvme_completion {int /*<<< orphan*/  sq_id; int /*<<< orphan*/  command_id; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 void* CMD_CTX_CANCELLED ; 
 void* CMD_CTX_COMPLETED ; 
 void* CMD_CTX_FLUSH ; 
 void* CMD_CTX_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,void*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct nvme_dev *dev, void *ctx,
						struct nvme_completion *cqe)
{
	if (ctx == CMD_CTX_CANCELLED)
		return;
	if (ctx == CMD_CTX_FLUSH)
		return;
	if (ctx == CMD_CTX_COMPLETED) {
		FUNC0(&dev->pci_dev->dev,
				"completed id %d twice on queue %d\n",
				cqe->command_id, FUNC1(&cqe->sq_id));
		return;
	}
	if (ctx == CMD_CTX_INVALID) {
		FUNC0(&dev->pci_dev->dev,
				"invalid id %d completed on queue %d\n",
				cqe->command_id, FUNC1(&cqe->sq_id));
		return;
	}

	FUNC0(&dev->pci_dev->dev, "Unknown special completion %p\n", ctx);
}