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
typedef  int uint32_t ;
typedef  int uint16_t ;
struct TYPE_2__ {int flt_chap_size; int flt_region_chap; } ;
struct scsi_qla_host {int port_num; int /*<<< orphan*/  chap_dma_pool; int /*<<< orphan*/  chap_sem; scalar_t__ chap_list; TYPE_1__ hw; } ;
struct ql4_chap_table {int /*<<< orphan*/  cookie; } ;
struct Scsi_Host {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  CHAP_VALID_COOKIE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int FLASH_CHAP_OFFSET ; 
 int /*<<< orphan*/  FLASH_OPT_RMW_COMMIT ; 
 int FLASH_RAW_ACCESS_ADDR ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int MAX_CHAP_ENTRIES_40XX ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct ql4_chap_table* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct ql4_chap_table*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct scsi_qla_host*) ; 
 scalar_t__ FUNC6 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC7 (struct ql4_chap_table*,struct ql4_chap_table*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ql4_chap_table*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct scsi_qla_host*,char*,...) ; 
 int FUNC12 (struct scsi_qla_host*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC13 (struct Scsi_Host*,int) ; 
 int FUNC14 (struct scsi_qla_host*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 struct scsi_qla_host* FUNC15 (struct Scsi_Host*) ; 

__attribute__((used)) static int FUNC16(struct Scsi_Host *shost, uint16_t chap_tbl_idx)
{
	struct scsi_qla_host *ha = FUNC15(shost);
	struct ql4_chap_table *chap_table;
	dma_addr_t chap_dma;
	int max_chap_entries = 0;
	uint32_t offset = 0;
	uint32_t chap_size;
	int ret = 0;

	chap_table = FUNC3(ha->chap_dma_pool, GFP_KERNEL, &chap_dma);
	if (chap_table == NULL)
		return -ENOMEM;

	FUNC8(chap_table, 0, sizeof(struct ql4_chap_table));

	if (FUNC6(ha))
		max_chap_entries = (ha->hw.flt_chap_size / 2) /
				   sizeof(struct ql4_chap_table);
	else
		max_chap_entries = MAX_CHAP_ENTRIES_40XX;

	if (chap_tbl_idx > max_chap_entries) {
		ret = -EINVAL;
		goto exit_delete_chap;
	}

	/* Check if chap index is in use.
	 * If chap is in use don't delet chap entry */
	ret = FUNC13(shost, chap_tbl_idx);
	if (ret) {
		FUNC11(KERN_INFO, ha, "CHAP entry %d is in use, cannot "
			   "delete from flash\n", chap_tbl_idx);
		ret = -EBUSY;
		goto exit_delete_chap;
	}

	chap_size = sizeof(struct ql4_chap_table);
	if (FUNC5(ha))
		offset = FLASH_CHAP_OFFSET | (chap_tbl_idx * chap_size);
	else {
		offset = FLASH_RAW_ACCESS_ADDR + (ha->hw.flt_region_chap << 2);
		/* flt_chap_size is CHAP table size for both ports
		 * so divide it by 2 to calculate the offset for second port
		 */
		if (ha->port_num == 1)
			offset += (ha->hw.flt_chap_size / 2);
		offset += (chap_tbl_idx * chap_size);
	}

	ret = FUNC12(ha, chap_dma, offset, chap_size);
	if (ret != QLA_SUCCESS) {
		ret = -EINVAL;
		goto exit_delete_chap;
	}

	FUNC0(FUNC11(KERN_INFO, ha, "Chap Cookie: x%x\n",
			  FUNC2(chap_table->cookie)));

	if (FUNC2(chap_table->cookie) != CHAP_VALID_COOKIE) {
		FUNC11(KERN_ERR, ha, "No valid chap entry found\n");
		goto exit_delete_chap;
	}

	chap_table->cookie = FUNC1(0xFFFF);

	offset = FLASH_CHAP_OFFSET |
			(chap_tbl_idx * sizeof(struct ql4_chap_table));
	ret = FUNC14(ha, chap_dma, offset, chap_size,
				FLASH_OPT_RMW_COMMIT);
	if (ret == QLA_SUCCESS && ha->chap_list) {
		FUNC9(&ha->chap_sem);
		/* Update ha chap_list cache */
		FUNC7((struct ql4_chap_table *)ha->chap_list + chap_tbl_idx,
			chap_table, sizeof(struct ql4_chap_table));
		FUNC10(&ha->chap_sem);
	}
	if (ret != QLA_SUCCESS)
		ret =  -EINVAL;

exit_delete_chap:
	FUNC4(ha->chap_dma_pool, chap_table, chap_dma);
	return ret;
}