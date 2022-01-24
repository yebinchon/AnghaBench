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
struct nvme_ns {struct nvme_dev* dev; } ;
struct nvme_dev {TYPE_1__* bar; } ;
struct TYPE_2__ {int /*<<< orphan*/  csts; } ;

/* Variables and functions */
 int /*<<< orphan*/  NOT_READY ; 
 int /*<<< orphan*/  NO_SENSE ; 
 int NVME_CSTS_RDY ; 
 int /*<<< orphan*/  SAM_STAT_CHECK_CONDITION ; 
 int /*<<< orphan*/  SAM_STAT_GOOD ; 
 int /*<<< orphan*/  SCSI_ASCQ_CAUSE_NOT_REPORTABLE ; 
 int /*<<< orphan*/  SCSI_ASC_LUN_NOT_READY ; 
 int SNTI_TRANSLATION_SUCCESS ; 
 int FUNC0 (struct sg_io_hdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct nvme_ns *ns,
					struct sg_io_hdr *hdr,
					u8 *cmd)
{
	int res = SNTI_TRANSLATION_SUCCESS;
	struct nvme_dev *dev = ns->dev;

	if (!(FUNC1(&dev->bar->csts) & NVME_CSTS_RDY))
		res = FUNC0(hdr, SAM_STAT_CHECK_CONDITION,
					    NOT_READY, SCSI_ASC_LUN_NOT_READY,
					    SCSI_ASCQ_CAUSE_NOT_REPORTABLE);
	else
		res = FUNC0(hdr, SAM_STAT_GOOD, NO_SENSE, 0, 0);

	return res;
}