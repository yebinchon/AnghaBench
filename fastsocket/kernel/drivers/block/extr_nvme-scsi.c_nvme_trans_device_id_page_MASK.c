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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sg_io_hdr {int dummy; } ;
struct nvme_ns {int /*<<< orphan*/  ns_id; struct nvme_dev* dev; } ;
struct nvme_id_ns {int dummy; } ;
struct nvme_id_ctrl {int* ieee; } ;
struct nvme_dev {int* serial; int* model; TYPE_1__* pci_dev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {int vendor; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int INQ_DEVICE_IDENTIFICATION_PAGE ; 
 int SNTI_TRANSLATION_SUCCESS ; 
 int /*<<< orphan*/  STANDARD_INQUIRY_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct nvme_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct sg_io_hdr*,int*,int) ; 
 int FUNC8 (struct sg_io_hdr*,int) ; 

__attribute__((used)) static int FUNC9(struct nvme_ns *ns, struct sg_io_hdr *hdr,
					u8 *inq_response, int alloc_len)
{
	struct nvme_dev *dev = ns->dev;
	dma_addr_t dma_addr;
	void *mem;
	struct nvme_id_ctrl *id_ctrl;
	int res = SNTI_TRANSLATION_SUCCESS;
	int nvme_sc;
	u8 ieee[4];
	int xfer_len;
	__be32 tmp_id = FUNC0(ns->ns_id);

	mem = FUNC1(&dev->pci_dev->dev, sizeof(struct nvme_id_ns),
					&dma_addr, GFP_KERNEL);
	if (mem == NULL) {
		res = -ENOMEM;
		goto out_dma;
	}

	/* nvme controller identify */
	nvme_sc = FUNC6(dev, 0, 1, dma_addr);
	res = FUNC8(hdr, nvme_sc);
	if (res)
		goto out_free;
	if (nvme_sc) {
		res = nvme_sc;
		goto out_free;
	}
	id_ctrl = mem;

	/* Since SCSI tried to save 4 bits... [SPC-4(r34) Table 591] */
	ieee[0] = id_ctrl->ieee[0] << 4;
	ieee[1] = id_ctrl->ieee[0] >> 4 | id_ctrl->ieee[1] << 4;
	ieee[2] = id_ctrl->ieee[1] >> 4 | id_ctrl->ieee[2] << 4;
	ieee[3] = id_ctrl->ieee[2] >> 4;

	FUNC4(inq_response, 0, STANDARD_INQUIRY_LENGTH);
	inq_response[1] = INQ_DEVICE_IDENTIFICATION_PAGE;    /* Page Code */
	inq_response[3] = 20;      /* Page Length */
	/* Designation Descriptor start */
	inq_response[4] = 0x01;    /* Proto ID=0h | Code set=1h */
	inq_response[5] = 0x03;    /* PIV=0b | Asso=00b | Designator Type=3h */
	inq_response[6] = 0x00;    /* Rsvd */
	inq_response[7] = 16;      /* Designator Length */
	/* Designator start */
	inq_response[8] = 0x60 | ieee[3]; /* NAA=6h | IEEE ID MSB, High nibble*/
	inq_response[9] = ieee[2];        /* IEEE ID */
	inq_response[10] = ieee[1];       /* IEEE ID */
	inq_response[11] = ieee[0];       /* IEEE ID| Vendor Specific ID... */
	inq_response[12] = (dev->pci_dev->vendor & 0xFF00) >> 8;
	inq_response[13] = (dev->pci_dev->vendor & 0x00FF);
	inq_response[14] = dev->serial[0];
	inq_response[15] = dev->serial[1];
	inq_response[16] = dev->model[0];
	inq_response[17] = dev->model[1];
	FUNC3(&inq_response[18], &tmp_id, sizeof(u32));
	/* Last 2 bytes are zero */

	xfer_len = FUNC5(alloc_len, STANDARD_INQUIRY_LENGTH);
	res = FUNC7(hdr, inq_response, xfer_len);

 out_free:
	FUNC2(&dev->pci_dev->dev, sizeof(struct nvme_id_ns), mem,
			  dma_addr);
 out_dma:
	return res;
}