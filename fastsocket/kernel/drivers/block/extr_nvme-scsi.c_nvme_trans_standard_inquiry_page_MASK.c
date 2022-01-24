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
struct nvme_id_ns {scalar_t__ dps; } ;
struct nvme_dev {char* model; char* firmware_rev; TYPE_1__* pci_dev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ADDITIONAL_STD_INQ_LENGTH ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int SNTI_TRANSLATION_SUCCESS ; 
 int /*<<< orphan*/  STANDARD_INQUIRY_LENGTH ; 
 int VERSION_SPC_4 ; 
 void* FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct nvme_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sg_io_hdr*,int*,int) ; 
 int FUNC6 (struct sg_io_hdr*,int) ; 
 int /*<<< orphan*/  FUNC7 (int*,char*,int) ; 

__attribute__((used)) static int FUNC8(struct nvme_ns *ns,
					struct sg_io_hdr *hdr, u8 *inq_response,
					int alloc_len)
{
	struct nvme_dev *dev = ns->dev;
	dma_addr_t dma_addr;
	void *mem;
	struct nvme_id_ns *id_ns;
	int res = SNTI_TRANSLATION_SUCCESS;
	int nvme_sc;
	int xfer_len;
	u8 resp_data_format = 0x02;
	u8 protect;
	u8 cmdque = 0x01 << 1;

	mem = FUNC0(&dev->pci_dev->dev, sizeof(struct nvme_id_ns),
				&dma_addr, GFP_KERNEL);
	if (mem == NULL) {
		res = -ENOMEM;
		goto out_dma;
	}

	/* nvme ns identify - use DPS value for PROTECT field */
	nvme_sc = FUNC4(dev, ns->ns_id, 0, dma_addr);
	res = FUNC6(hdr, nvme_sc);
	/*
	 * If nvme_sc was -ve, res will be -ve here.
	 * If nvme_sc was +ve, the status would bace been translated, and res
	 *  can only be 0 or -ve.
	 *    - If 0 && nvme_sc > 0, then go into next if where res gets nvme_sc
	 *    - If -ve, return because its a Linux error.
	 */
	if (res)
		goto out_free;
	if (nvme_sc) {
		res = nvme_sc;
		goto out_free;
	}
	id_ns = mem;
	(id_ns->dps) ? (protect = 0x01) : (protect = 0);

	FUNC2(inq_response, 0, STANDARD_INQUIRY_LENGTH);
	inq_response[2] = VERSION_SPC_4;
	inq_response[3] = resp_data_format;	/*normaca=0 | hisup=0 */
	inq_response[4] = ADDITIONAL_STD_INQ_LENGTH;
	inq_response[5] = protect;	/* sccs=0 | acc=0 | tpgs=0 | pc3=0 */
	inq_response[7] = cmdque;	/* wbus16=0 | sync=0 | vs=0 */
	FUNC7(&inq_response[8], "NVMe    ", 8);
	FUNC7(&inq_response[16], dev->model, 16);
	FUNC7(&inq_response[32], dev->firmware_rev, 4);

	xfer_len = FUNC3(alloc_len, STANDARD_INQUIRY_LENGTH);
	res = FUNC5(hdr, inq_response, xfer_len);

 out_free:
	FUNC1(&dev->pci_dev->dev, sizeof(struct nvme_id_ns), mem,
			  dma_addr);
 out_dma:
	return res;
}