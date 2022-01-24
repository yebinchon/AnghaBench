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
typedef  int /*<<< orphan*/  u8 ;
struct sg_io_hdr {int dummy; } ;
struct nvme_queue {int dummy; } ;
struct nvme_ns {int /*<<< orphan*/  dev; int /*<<< orphan*/  ns_id; } ;
struct TYPE_2__ {int /*<<< orphan*/  nsid; int /*<<< orphan*/  opcode; } ;
struct nvme_command {TYPE_1__ common; } ;
typedef  int /*<<< orphan*/  c ;

/* Variables and functions */
 int /*<<< orphan*/  NVME_IO_TIMEOUT ; 
 int SNTI_TRANSLATION_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct nvme_queue* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nvme_command*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  nvme_cmd_flush ; 
 int FUNC3 (struct nvme_queue*,struct nvme_command*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sg_io_hdr*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nvme_queue*) ; 

__attribute__((used)) static int FUNC6(struct nvme_ns *ns,
					struct sg_io_hdr *hdr, u8 *cmd)
{
	int res = SNTI_TRANSLATION_SUCCESS;
	int nvme_sc;
	struct nvme_command c;
	struct nvme_queue *nvmeq;

	FUNC2(&c, 0, sizeof(c));
	c.common.opcode = nvme_cmd_flush;
	c.common.nsid = FUNC0(ns->ns_id);

	nvmeq = FUNC1(ns->dev);
	FUNC5(nvmeq);
	nvme_sc = FUNC3(nvmeq, &c, NULL, NVME_IO_TIMEOUT);

	res = FUNC4(hdr, nvme_sc);
	if (res)
		goto out;
	if (nvme_sc)
		res = nvme_sc;

 out:
	return res;
}