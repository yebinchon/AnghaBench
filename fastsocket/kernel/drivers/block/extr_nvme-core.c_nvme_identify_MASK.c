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
struct nvme_dev {int dummy; } ;
struct TYPE_2__ {void* cns; int /*<<< orphan*/  prp1; void* nsid; int /*<<< orphan*/  opcode; } ;
struct nvme_command {TYPE_1__ identify; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
typedef  int /*<<< orphan*/  c ;

/* Variables and functions */
 void* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nvme_command*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  nvme_admin_identify ; 
 int FUNC3 (struct nvme_dev*,struct nvme_command*,int /*<<< orphan*/ *) ; 

int FUNC4(struct nvme_dev *dev, unsigned nsid, unsigned cns,
							dma_addr_t dma_addr)
{
	struct nvme_command c;

	FUNC2(&c, 0, sizeof(c));
	c.identify.opcode = nvme_admin_identify;
	c.identify.nsid = FUNC0(nsid);
	c.identify.prp1 = FUNC1(dma_addr);
	c.identify.cns = FUNC0(cns);

	return FUNC3(dev, &c, NULL);
}