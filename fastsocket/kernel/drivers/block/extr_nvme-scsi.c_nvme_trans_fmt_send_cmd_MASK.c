#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
typedef  size_t u32 ;
struct sg_io_hdr {int dummy; } ;
struct nvme_ns {size_t ns_id; int mode_select_block_len; scalar_t__ mode_select_num_blocks; struct nvme_dev* dev; } ;
struct nvme_id_ns {int flbas; size_t nlbaf; int /*<<< orphan*/  ncap; TYPE_1__* lbaf; } ;
struct nvme_dev {TYPE_3__* pci_dev; } ;
struct TYPE_5__ {void* cdw10; void* nsid; int /*<<< orphan*/  opcode; } ;
struct nvme_command {TYPE_2__ format; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
typedef  int /*<<< orphan*/  c ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int ds; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  ILLEGAL_REQUEST ; 
 int /*<<< orphan*/  SAM_STAT_CHECK_CONDITION ; 
 int /*<<< orphan*/  SCSI_ASCQ_CAUSE_NOT_REPORTABLE ; 
 int /*<<< orphan*/  SCSI_ASC_INVALID_PARAMETER ; 
 int SNTI_TRANSLATION_SUCCESS ; 
 void* FUNC0 (size_t) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nvme_command*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  nvme_admin_format_nvm ; 
 int FUNC5 (struct nvme_dev*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct nvme_dev*,struct nvme_command*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct sg_io_hdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct sg_io_hdr*,int) ; 

__attribute__((used)) static int FUNC9(struct nvme_ns *ns, struct sg_io_hdr *hdr,
				   u8 prot_info)
{
	int res = SNTI_TRANSLATION_SUCCESS;
	int nvme_sc;
	struct nvme_dev *dev = ns->dev;
	dma_addr_t dma_addr;
	void *mem;
	struct nvme_id_ns *id_ns;
	u8 i;
	u8 flbas, nlbaf;
	u8 selected_lbaf = 0xFF;
	u32 cdw10 = 0;
	struct nvme_command c;

	/* Loop thru LBAF's in id_ns to match reqd lbaf, put in cdw10 */
	mem = FUNC1(&dev->pci_dev->dev, sizeof(struct nvme_id_ns),
							&dma_addr, GFP_KERNEL);
	if (mem == NULL) {
		res = -ENOMEM;
		goto out;
	}
	/* nvme ns identify */
	nvme_sc = FUNC5(dev, ns->ns_id, 0, dma_addr);
	res = FUNC8(hdr, nvme_sc);
	if (res)
		goto out_dma;
	if (nvme_sc) {
		res = nvme_sc;
		goto out_dma;
	}
	id_ns = mem;
	flbas = (id_ns->flbas) & 0x0F;
	nlbaf = id_ns->nlbaf;

	for (i = 0; i < nlbaf; i++) {
		if (ns->mode_select_block_len == (1 << (id_ns->lbaf[i].ds))) {
			selected_lbaf = i;
			break;
		}
	}
	if (selected_lbaf > 0x0F) {
		res = FUNC7(hdr, SAM_STAT_CHECK_CONDITION,
				ILLEGAL_REQUEST, SCSI_ASC_INVALID_PARAMETER,
				SCSI_ASCQ_CAUSE_NOT_REPORTABLE);
	}
	if (ns->mode_select_num_blocks != FUNC3(id_ns->ncap)) {
		res = FUNC7(hdr, SAM_STAT_CHECK_CONDITION,
				ILLEGAL_REQUEST, SCSI_ASC_INVALID_PARAMETER,
				SCSI_ASCQ_CAUSE_NOT_REPORTABLE);
	}

	cdw10 |= prot_info << 5;
	cdw10 |= selected_lbaf & 0x0F;
	FUNC4(&c, 0, sizeof(c));
	c.format.opcode = nvme_admin_format_nvm;
	c.format.nsid = FUNC0(ns->ns_id);
	c.format.cdw10 = FUNC0(cdw10);

	nvme_sc = FUNC6(dev, &c, NULL);
	res = FUNC8(hdr, nvme_sc);
	if (res)
		goto out_dma;
	if (nvme_sc)
		res = nvme_sc;

 out_dma:
	FUNC2(&dev->pci_dev->dev, sizeof(struct nvme_id_ns), mem,
			  dma_addr);
 out:
	return res;
}