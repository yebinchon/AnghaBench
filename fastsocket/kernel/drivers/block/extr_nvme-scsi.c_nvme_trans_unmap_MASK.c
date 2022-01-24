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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct sg_io_hdr {int dummy; } ;
struct scsi_unmap_parm_list {TYPE_1__* desc; int /*<<< orphan*/  unmap_blk_desc_data_len; } ;
struct nvme_queue {int dummy; } ;
struct nvme_ns {int ns_id; struct nvme_dev* dev; } ;
struct nvme_dsm_range {scalar_t__ cattr; void* slba; void* nlb; } ;
struct nvme_dev {TYPE_3__* pci_dev; } ;
struct TYPE_5__ {void* attributes; void* nr; void* prp1; void* nsid; int /*<<< orphan*/  opcode; } ;
struct nvme_command {TYPE_2__ dsm; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
typedef  int /*<<< orphan*/  c ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  slba; int /*<<< orphan*/  nlb; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NVME_DSMGMT_AD ; 
 int /*<<< orphan*/  NVME_IO_TIMEOUT ; 
 int SNTI_TRANSLATION_SUCCESS ; 
 int /*<<< orphan*/  UNMAP_CDB_PARAM_LIST_LENGTH_OFFSET ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 struct nvme_dsm_range* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,struct nvme_dsm_range*,int /*<<< orphan*/ ) ; 
 struct nvme_queue* FUNC8 (struct nvme_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct scsi_unmap_parm_list*) ; 
 struct scsi_unmap_parm_list* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct nvme_command*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  nvme_cmd_dsm ; 
 int FUNC12 (struct nvme_queue*,struct nvme_command*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct sg_io_hdr*,struct scsi_unmap_parm_list*,int) ; 
 int FUNC14 (struct sg_io_hdr*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct nvme_queue*) ; 

__attribute__((used)) static int FUNC16(struct nvme_ns *ns, struct sg_io_hdr *hdr,
							u8 *cmd)
{
	struct nvme_dev *dev = ns->dev;
	struct scsi_unmap_parm_list *plist;
	struct nvme_dsm_range *range;
	struct nvme_queue *nvmeq;
	struct nvme_command c;
	int i, nvme_sc, res = -ENOMEM;
	u16 ndesc, list_len;
	dma_addr_t dma_addr;

	list_len = FUNC0(cmd, UNMAP_CDB_PARAM_LIST_LENGTH_OFFSET);
	if (!list_len)
		return -EINVAL;

	plist = FUNC10(list_len, GFP_KERNEL);
	if (!plist)
		return -ENOMEM;

	res = FUNC13(hdr, plist, list_len);
	if (res != SNTI_TRANSLATION_SUCCESS)
		goto out;

	ndesc = FUNC1(plist->unmap_blk_desc_data_len) >> 4;
	if (!ndesc || ndesc > 256) {
		res = -EINVAL;
		goto out;
	}

	range = FUNC6(&dev->pci_dev->dev, ndesc * sizeof(*range),
							&dma_addr, GFP_KERNEL);
	if (!range)
		goto out;

	for (i = 0; i < ndesc; i++) {
		range[i].nlb = FUNC4(FUNC2(plist->desc[i].nlb));
		range[i].slba = FUNC5(FUNC3(plist->desc[i].slba));
		range[i].cattr = 0;
	}

	FUNC11(&c, 0, sizeof(c));
	c.dsm.opcode = nvme_cmd_dsm;
	c.dsm.nsid = FUNC4(ns->ns_id);
	c.dsm.prp1 = FUNC5(dma_addr);
	c.dsm.nr = FUNC4(ndesc - 1);
	c.dsm.attributes = FUNC4(NVME_DSMGMT_AD);

	nvmeq = FUNC8(dev);
	FUNC15(nvmeq);

	nvme_sc = FUNC12(nvmeq, &c, NULL, NVME_IO_TIMEOUT);
	res = FUNC14(hdr, nvme_sc);

	FUNC7(&dev->pci_dev->dev, ndesc * sizeof(*range),
							range, dma_addr);
 out:
	FUNC9(plist);
	return res;
}