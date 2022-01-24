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
struct TYPE_2__ {int flt_region_chap; int flt_chap_size; } ;
struct scsi_qla_host {int port_num; int /*<<< orphan*/  chap_dma_pool; TYPE_1__ hw; } ;
struct ql4_chap_table {int /*<<< orphan*/  cookie; int /*<<< orphan*/  name; int /*<<< orphan*/  secret; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 scalar_t__ CHAP_VALID_COOKIE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int FLASH_CHAP_OFFSET ; 
 int FLASH_RAW_ACCESS_ADDR ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  QL4_CHAP_MAX_NAME_LEN ; 
 int /*<<< orphan*/  QL4_CHAP_MAX_SECRET_LEN ; 
 int QLA_ERROR ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct ql4_chap_table* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct ql4_chap_table*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC6 (struct ql4_chap_table*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct scsi_qla_host*,char*,...) ; 
 int FUNC8 (struct scsi_qla_host*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC10(struct scsi_qla_host *ha, char *username, char *password,
		     uint16_t idx)
{
	int ret = 0;
	int rval = QLA_ERROR;
	uint32_t offset = 0, chap_size;
	struct ql4_chap_table *chap_table;
	dma_addr_t chap_dma;

	chap_table = FUNC3(ha->chap_dma_pool, GFP_KERNEL, &chap_dma);
	if (chap_table == NULL)
		return -ENOMEM;

	chap_size = sizeof(struct ql4_chap_table);
	FUNC6(chap_table, 0, chap_size);

	if (FUNC5(ha))
		offset = FLASH_CHAP_OFFSET | (idx * chap_size);
	else {
		offset = FLASH_RAW_ACCESS_ADDR + (ha->hw.flt_region_chap << 2);
		/* flt_chap_size is CHAP table size for both ports
		 * so divide it by 2 to calculate the offset for second port
		 */
		if (ha->port_num == 1)
			offset += (ha->hw.flt_chap_size / 2);
		offset += (idx * chap_size);
	}

	rval = FUNC8(ha, chap_dma, offset, chap_size);
	if (rval != QLA_SUCCESS) {
		ret = -EINVAL;
		goto exit_get_chap;
	}

	FUNC0(FUNC7(KERN_INFO, ha, "Chap Cookie: x%x\n",
		FUNC2(chap_table->cookie)));

	if (FUNC2(chap_table->cookie) != CHAP_VALID_COOKIE) {
		FUNC7(KERN_ERR, ha, "No valid chap entry found\n");
		goto exit_get_chap;
	}

	FUNC9(password, chap_table->secret, QL4_CHAP_MAX_SECRET_LEN);
	FUNC9(username, chap_table->name, QL4_CHAP_MAX_NAME_LEN);
	chap_table->cookie = FUNC1(CHAP_VALID_COOKIE);

exit_get_chap:
	FUNC4(ha->chap_dma_pool, chap_table, chap_dma);
	return ret;
}