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
typedef  int /*<<< orphan*/  u32 ;
struct nvme_dev {int dummy; } ;
struct TYPE_2__ {void* fid; int /*<<< orphan*/  prp1; void* nsid; int /*<<< orphan*/  opcode; } ;
struct nvme_command {TYPE_1__ features; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
typedef  int /*<<< orphan*/  c ;

/* Variables and functions */
 void* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nvme_command*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  nvme_admin_get_features ; 
 int FUNC3 (struct nvme_dev*,struct nvme_command*,int /*<<< orphan*/ *) ; 

int FUNC4(struct nvme_dev *dev, unsigned fid, unsigned nsid,
					dma_addr_t dma_addr, u32 *result)
{
	struct nvme_command c;

	FUNC2(&c, 0, sizeof(c));
	c.features.opcode = nvme_admin_get_features;
	c.features.nsid = FUNC0(nsid);
	c.features.prp1 = FUNC1(dma_addr);
	c.features.fid = FUNC0(fid);

	return FUNC3(dev, &c, result);
}