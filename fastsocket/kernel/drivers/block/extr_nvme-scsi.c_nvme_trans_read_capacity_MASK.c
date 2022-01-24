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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sg_io_hdr {int dummy; } ;
struct nvme_ns {int /*<<< orphan*/  ns_id; struct nvme_dev* dev; } ;
struct nvme_id_ns {int dummy; } ;
struct nvme_dev {TYPE_1__* pci_dev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  READ_CAP_10_RESP_SIZE ; 
 int /*<<< orphan*/  READ_CAP_16_RESP_SIZE ; 
 int SNTI_TRANSLATION_SUCCESS ; 
 void* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 
 scalar_t__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct nvme_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct sg_io_hdr*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*,struct nvme_id_ns*,scalar_t__) ; 
 int FUNC10 (struct sg_io_hdr*,int) ; 

__attribute__((used)) static int FUNC11(struct nvme_ns *ns, struct sg_io_hdr *hdr,
							u8 *cmd)
{
	int res = SNTI_TRANSLATION_SUCCESS;
	int nvme_sc;
	u32 alloc_len = READ_CAP_10_RESP_SIZE;
	u32 resp_size = READ_CAP_10_RESP_SIZE;
	u32 xfer_len;
	u8 cdb16;
	struct nvme_dev *dev = ns->dev;
	dma_addr_t dma_addr;
	void *mem;
	struct nvme_id_ns *id_ns;
	u8 *response;

	cdb16 = FUNC1(cmd);
	if (cdb16) {
		alloc_len = FUNC0(cmd);
		resp_size = READ_CAP_16_RESP_SIZE;
	}

	mem = FUNC2(&dev->pci_dev->dev, sizeof(struct nvme_id_ns),
							&dma_addr, GFP_KERNEL);
	if (mem == NULL) {
		res = -ENOMEM;
		goto out;
	}
	/* nvme ns identify */
	nvme_sc = FUNC7(dev, ns->ns_id, 0, dma_addr);
	res = FUNC10(hdr, nvme_sc);
	if (res)
		goto out_dma;
	if (nvme_sc) {
		res = nvme_sc;
		goto out_dma;
	}
	id_ns = mem;

	response = FUNC5(resp_size, GFP_KERNEL);
	if (response == NULL) {
		res = -ENOMEM;
		goto out_dma;
	}
	FUNC9(response, id_ns, cdb16);

	xfer_len = FUNC6(alloc_len, resp_size);
	res = FUNC8(hdr, response, xfer_len);

	FUNC4(response);
 out_dma:
	FUNC3(&dev->pci_dev->dev, sizeof(struct nvme_id_ns), mem,
			  dma_addr);
 out:
	return res;
}