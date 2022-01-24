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
typedef  scalar_t__ u8 ;
typedef  unsigned int u32 ;
struct sg_io_hdr {scalar_t__ iovec_count; scalar_t__ dxferp; } ;
struct nvme_ns {struct nvme_dev* dev; } ;
struct nvme_iod {int dummy; } ;
struct nvme_dev {int dummy; } ;
struct TYPE_4__ {void** cdw10; scalar_t__ opcode; } ;
struct TYPE_3__ {void* offset; void* numd; } ;
struct nvme_command {TYPE_2__ common; TYPE_1__ dlfw; } ;
typedef  int /*<<< orphan*/  c ;

/* Variables and functions */
 unsigned int BYTES_TO_DWORDS ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  ILLEGAL_REQUEST ; 
 scalar_t__ FUNC0 (struct nvme_iod*) ; 
 scalar_t__ NVME_FWACT_REPL_ACTV ; 
 int FUNC1 (struct nvme_iod*) ; 
 int /*<<< orphan*/  SAM_STAT_CHECK_CONDITION ; 
 int /*<<< orphan*/  SCSI_ASCQ_CAUSE_NOT_REPORTABLE ; 
 int /*<<< orphan*/  SCSI_ASC_INVALID_CDB ; 
 int SNTI_TRANSLATION_SUCCESS ; 
 void* FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct nvme_command*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ nvme_admin_activate_fw ; 
 scalar_t__ nvme_admin_download_fw ; 
 int /*<<< orphan*/  FUNC4 (struct nvme_dev*,struct nvme_iod*) ; 
 struct nvme_iod* FUNC5 (struct nvme_dev*,int /*<<< orphan*/ ,unsigned long,unsigned int) ; 
 unsigned int FUNC6 (struct nvme_dev*,TYPE_2__*,struct nvme_iod*,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct nvme_dev*,struct nvme_command*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct sg_io_hdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct sg_io_hdr*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct nvme_dev*,int /*<<< orphan*/ ,struct nvme_iod*) ; 

__attribute__((used)) static int FUNC11(struct nvme_ns *ns, struct sg_io_hdr *hdr,
					u8 opcode, u32 tot_len, u32 offset,
					u8 buffer_id)
{
	int res = SNTI_TRANSLATION_SUCCESS;
	int nvme_sc;
	struct nvme_dev *dev = ns->dev;
	struct nvme_command c;
	struct nvme_iod *iod = NULL;
	unsigned length;

	FUNC3(&c, 0, sizeof(c));
	c.common.opcode = opcode;
	if (opcode == nvme_admin_download_fw) {
		if (hdr->iovec_count > 0) {
			/* Assuming SGL is not allowed for this command */
			res = FUNC8(hdr,
						SAM_STAT_CHECK_CONDITION,
						ILLEGAL_REQUEST,
						SCSI_ASC_INVALID_CDB,
						SCSI_ASCQ_CAUSE_NOT_REPORTABLE);
			goto out;
		}
		iod = FUNC5(dev, DMA_TO_DEVICE,
				(unsigned long)hdr->dxferp, tot_len);
		if (FUNC0(iod)) {
			res = FUNC1(iod);
			goto out;
		}
		length = FUNC6(dev, &c.common, iod, tot_len,
								GFP_KERNEL);
		if (length != tot_len) {
			res = -ENOMEM;
			goto out_unmap;
		}

		c.dlfw.numd = FUNC2((tot_len/BYTES_TO_DWORDS) - 1);
		c.dlfw.offset = FUNC2(offset/BYTES_TO_DWORDS);
	} else if (opcode == nvme_admin_activate_fw) {
		u32 cdw10 = buffer_id | NVME_FWACT_REPL_ACTV;
		c.common.cdw10[0] = FUNC2(cdw10);
	}

	nvme_sc = FUNC7(dev, &c, NULL);
	res = FUNC9(hdr, nvme_sc);
	if (res)
		goto out_unmap;
	if (nvme_sc)
		res = nvme_sc;

 out_unmap:
	if (opcode == nvme_admin_download_fw) {
		FUNC10(dev, DMA_TO_DEVICE, iod);
		FUNC4(dev, iod);
	}
 out:
	return res;
}