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
struct sg_io_hdr {int dummy; } ;
struct nvme_ns {int /*<<< orphan*/  ns_id; struct nvme_dev* dev; } ;
struct nvme_id_ns {int dpc; scalar_t__ dps; } ;
struct nvme_id_ctrl {int vwc; } ;
struct nvme_dev {TYPE_1__* pci_dev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  EXTENDED_INQUIRY_DATA_PAGE_LENGTH ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int INQ_EXTENDED_INQUIRY_DATA_PAGE ; 
 int SNTI_TRANSLATION_SUCCESS ; 
 void* FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct nvme_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct sg_io_hdr*,int*,int) ; 
 int FUNC8 (struct sg_io_hdr*,int) ; 

__attribute__((used)) static int FUNC9(struct nvme_ns *ns, struct sg_io_hdr *hdr,
					int alloc_len)
{
	u8 *inq_response;
	int res = SNTI_TRANSLATION_SUCCESS;
	int nvme_sc;
	struct nvme_dev *dev = ns->dev;
	dma_addr_t dma_addr;
	void *mem;
	struct nvme_id_ctrl *id_ctrl;
	struct nvme_id_ns *id_ns;
	int xfer_len;
	u8 microcode = 0x80;
	u8 spt;
	u8 spt_lut[8] = {0, 0, 2, 1, 4, 6, 5, 7};
	u8 grd_chk, app_chk, ref_chk, protect;
	u8 uask_sup = 0x20;
	u8 v_sup;
	u8 luiclr = 0x01;

	inq_response = FUNC3(EXTENDED_INQUIRY_DATA_PAGE_LENGTH, GFP_KERNEL);
	if (inq_response == NULL) {
		res = -ENOMEM;
		goto out_mem;
	}

	mem = FUNC0(&dev->pci_dev->dev, sizeof(struct nvme_id_ns),
							&dma_addr, GFP_KERNEL);
	if (mem == NULL) {
		res = -ENOMEM;
		goto out_dma;
	}

	/* nvme ns identify */
	nvme_sc = FUNC6(dev, ns->ns_id, 0, dma_addr);
	res = FUNC8(hdr, nvme_sc);
	if (res)
		goto out_free;
	if (nvme_sc) {
		res = nvme_sc;
		goto out_free;
	}
	id_ns = mem;
	spt = spt_lut[(id_ns->dpc) & 0x07] << 3;
	(id_ns->dps) ? (protect = 0x01) : (protect = 0);
	grd_chk = protect << 2;
	app_chk = protect << 1;
	ref_chk = protect;

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
	v_sup = id_ctrl->vwc;

	FUNC4(inq_response, 0, EXTENDED_INQUIRY_DATA_PAGE_LENGTH);
	inq_response[1] = INQ_EXTENDED_INQUIRY_DATA_PAGE;    /* Page Code */
	inq_response[2] = 0x00;    /* Page Length MSB */
	inq_response[3] = 0x3C;    /* Page Length LSB */
	inq_response[4] = microcode | spt | grd_chk | app_chk | ref_chk;
	inq_response[5] = uask_sup;
	inq_response[6] = v_sup;
	inq_response[7] = luiclr;
	inq_response[8] = 0;
	inq_response[9] = 0;

	xfer_len = FUNC5(alloc_len, EXTENDED_INQUIRY_DATA_PAGE_LENGTH);
	res = FUNC7(hdr, inq_response, xfer_len);

 out_free:
	FUNC1(&dev->pci_dev->dev, sizeof(struct nvme_id_ns), mem,
			  dma_addr);
 out_dma:
	FUNC2(inq_response);
 out_mem:
	return res;
}