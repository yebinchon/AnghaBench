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
typedef  int u8 ;
typedef  int u16 ;
struct sg_io_hdr {int dummy; } ;
struct nvme_smart_log {int* temperature; } ;
struct nvme_ns {struct nvme_dev* dev; } ;
struct nvme_dev {TYPE_2__* pci_dev; } ;
struct TYPE_3__ {void** cdw10; int /*<<< orphan*/  prp1; void* nsid; int /*<<< orphan*/  opcode; } ;
struct nvme_command {TYPE_1__ common; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
typedef  int /*<<< orphan*/  c ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int BYTES_TO_DWORDS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int KELVIN_TEMP_FACTOR ; 
 int /*<<< orphan*/  LOG_INFO_EXCP_PAGE_LENGTH ; 
 int LOG_PAGE_INFORMATIONAL_EXCEPTIONS_PAGE ; 
 int LOG_TEMP_UNKNOWN ; 
 int NVME_GET_SMART_LOG_PAGE ; 
 int NVME_SC_SUCCESS ; 
 int REMAINING_INFO_EXCP_PAGE_LENGTH ; 
 int SNTI_TRANSLATION_SUCCESS ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nvme_command*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nvme_admin_get_log_page ; 
 int FUNC8 (struct nvme_dev*,struct nvme_command*,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct sg_io_hdr*,int*,int) ; 

__attribute__((used)) static int FUNC10(struct nvme_ns *ns,
					struct sg_io_hdr *hdr, int alloc_len)
{
	int res = SNTI_TRANSLATION_SUCCESS;
	int xfer_len;
	u8 *log_response;
	struct nvme_command c;
	struct nvme_dev *dev = ns->dev;
	struct nvme_smart_log *smart_log;
	dma_addr_t dma_addr;
	void *mem;
	u8 temp_c;
	u16 temp_k;

	log_response = FUNC5(LOG_INFO_EXCP_PAGE_LENGTH, GFP_KERNEL);
	if (log_response == NULL) {
		res = -ENOMEM;
		goto out_mem;
	}

	mem = FUNC2(&dev->pci_dev->dev,
					sizeof(struct nvme_smart_log),
					&dma_addr, GFP_KERNEL);
	if (mem == NULL) {
		res = -ENOMEM;
		goto out_dma;
	}

	/* Get SMART Log Page */
	FUNC6(&c, 0, sizeof(c));
	c.common.opcode = nvme_admin_get_log_page;
	c.common.nsid = FUNC0(0xFFFFFFFF);
	c.common.prp1 = FUNC1(dma_addr);
	c.common.cdw10[0] = FUNC0(((sizeof(struct nvme_smart_log) /
			BYTES_TO_DWORDS) << 16) | NVME_GET_SMART_LOG_PAGE);
	res = FUNC8(dev, &c, NULL);
	if (res != NVME_SC_SUCCESS) {
		temp_c = LOG_TEMP_UNKNOWN;
	} else {
		smart_log = mem;
		temp_k = (smart_log->temperature[1] << 8) +
				(smart_log->temperature[0]);
		temp_c = temp_k - KELVIN_TEMP_FACTOR;
	}

	log_response[0] = LOG_PAGE_INFORMATIONAL_EXCEPTIONS_PAGE;
	/* Subpage=0x00, Page Length MSB=0 */
	log_response[3] = REMAINING_INFO_EXCP_PAGE_LENGTH;
	/* Informational Exceptions Log Parameter 1 Start */
	/* Parameter Code=0x0000 bytes 4,5 */
	log_response[6] = 0x23; /* DU=0, TSD=1, ETC=0, TMC=0, FMT_AND_LNK=11b */
	log_response[7] = 0x04; /* PARAMETER LENGTH */
	/* Add sense Code and qualifier = 0x00 each */
	/* Use Temperature from NVMe Get Log Page, convert to C from K */
	log_response[10] = temp_c;

	xfer_len = FUNC7(alloc_len, LOG_INFO_EXCP_PAGE_LENGTH);
	res = FUNC9(hdr, log_response, xfer_len);

	FUNC3(&dev->pci_dev->dev, sizeof(struct nvme_smart_log),
			  mem, dma_addr);
 out_dma:
	FUNC4(log_response);
 out_mem:
	return res;
}