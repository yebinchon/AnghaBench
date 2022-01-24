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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct sg_io_hdr {int dummy; } ;
struct nvme_ns {int /*<<< orphan*/  ns_id; struct nvme_dev* dev; } ;
struct nvme_id_ns {int flbas; int /*<<< orphan*/  ncap; TYPE_1__* lbaf; } ;
struct nvme_dev {TYPE_2__* pci_dev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
typedef  int /*<<< orphan*/  __be64 ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int ds; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MODE_PAGE_BLK_DES_LEN ; 
 int MODE_PAGE_LLBAA_BLK_DES_LEN ; 
 int SNTI_INTERNAL_ERROR ; 
 int SNTI_TRANSLATION_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,void*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int /*<<< orphan*/ *,int) ; 
 int FUNC6 (struct nvme_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct sg_io_hdr*,int) ; 

__attribute__((used)) static int FUNC8(struct nvme_ns *ns, struct sg_io_hdr *hdr,
				    u8 *resp, int len, u8 llbaa)
{
	int res = SNTI_TRANSLATION_SUCCESS;
	int nvme_sc;
	struct nvme_dev *dev = ns->dev;
	dma_addr_t dma_addr;
	void *mem;
	struct nvme_id_ns *id_ns;
	u8 flbas;
	u32 lba_length;

	if (llbaa == 0 && len < MODE_PAGE_BLK_DES_LEN)
		return SNTI_INTERNAL_ERROR;
	else if (llbaa > 0 && len < MODE_PAGE_LLBAA_BLK_DES_LEN)
		return SNTI_INTERNAL_ERROR;

	mem = FUNC2(&dev->pci_dev->dev, sizeof(struct nvme_id_ns),
							&dma_addr, GFP_KERNEL);
	if (mem == NULL) {
		res = -ENOMEM;
		goto out;
	}

	/* nvme ns identify */
	nvme_sc = FUNC6(dev, ns->ns_id, 0, dma_addr);
	res = FUNC7(hdr, nvme_sc);
	if (res)
		goto out_dma;
	if (nvme_sc) {
		res = nvme_sc;
		goto out_dma;
	}
	id_ns = mem;
	flbas = (id_ns->flbas) & 0x0F;
	lba_length = (1 << (id_ns->lbaf[flbas].ds));

	if (llbaa == 0) {
		__be32 tmp_cap = FUNC0(FUNC4(id_ns->ncap));
		/* Byte 4 is reserved */
		__be32 tmp_len = FUNC0(lba_length & 0x00FFFFFF);

		FUNC5(resp, &tmp_cap, sizeof(u32));
		FUNC5(&resp[4], &tmp_len, sizeof(u32));
	} else {
		__be64 tmp_cap = FUNC1(FUNC4(id_ns->ncap));
		__be32 tmp_len = FUNC0(lba_length);

		FUNC5(resp, &tmp_cap, sizeof(u64));
		/* Bytes 8, 9, 10, 11 are reserved */
		FUNC5(&resp[12], &tmp_len, sizeof(u32));
	}

 out_dma:
	FUNC3(&dev->pci_dev->dev, sizeof(struct nvme_id_ns), mem,
			  dma_addr);
 out:
	return res;
}