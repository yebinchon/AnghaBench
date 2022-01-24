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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct TYPE_3__ {int flt_chap_size; int flt_region_chap; } ;
struct scsi_qla_host {int port_num; TYPE_2__* pdev; int /*<<< orphan*/ * chap_list; TYPE_1__ hw; } ;
struct ql4_chap_table {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FLASH_CHAP_OFFSET ; 
 int FLASH_RAW_ACCESS_ADDR ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int MAX_CHAP_ENTRIES_40XX ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct scsi_qla_host*,char*) ; 
 int FUNC5 (struct scsi_qla_host*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/ * FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct scsi_qla_host *ha)
{
	int rval = 0;
	uint8_t *chap_flash_data = NULL;
	uint32_t offset;
	dma_addr_t chap_dma;
	uint32_t chap_size = 0;

	if (FUNC2(ha))
		chap_size = MAX_CHAP_ENTRIES_40XX  *
					sizeof(struct ql4_chap_table);
	else	/* Single region contains CHAP info for both
		 * ports which is divided into half for each port.
		 */
		chap_size = ha->hw.flt_chap_size / 2;

	chap_flash_data = FUNC0(&ha->pdev->dev, chap_size,
					  &chap_dma, GFP_KERNEL);
	if (!chap_flash_data) {
		FUNC4(KERN_ERR, ha, "No memory for chap_flash_data\n");
		return;
	}
	if (FUNC2(ha))
		offset = FLASH_CHAP_OFFSET;
	else {
		offset = FLASH_RAW_ACCESS_ADDR + (ha->hw.flt_region_chap << 2);
		if (ha->port_num == 1)
			offset += chap_size;
	}

	rval = FUNC5(ha, chap_dma, offset, chap_size);
	if (rval != QLA_SUCCESS)
		goto exit_chap_list;

	if (ha->chap_list == NULL)
		ha->chap_list = FUNC6(chap_size);
	if (ha->chap_list == NULL) {
		FUNC4(KERN_ERR, ha, "No memory for ha->chap_list\n");
		goto exit_chap_list;
	}

	FUNC3(ha->chap_list, chap_flash_data, chap_size);

exit_chap_list:
	FUNC1(&ha->pdev->dev, chap_size,
			chap_flash_data, chap_dma);
}