#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint32_t ;
typedef  int uint16_t ;
struct scsi_qla_host {int /*<<< orphan*/  chap_dma_pool; scalar_t__ chap_list; } ;
struct ql4_chap_table {int /*<<< orphan*/  cookie; int /*<<< orphan*/  name; int /*<<< orphan*/  secret; int /*<<< orphan*/  secret_len; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  BIT_6 ; 
 int /*<<< orphan*/  BIT_7 ; 
 int /*<<< orphan*/  CHAP_VALID_COOKIE ; 
 int EINVAL ; 
 int ENOMEM ; 
 int FLASH_CHAP_OFFSET ; 
 int /*<<< orphan*/  FLASH_OPT_RMW_COMMIT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MAX_CHAP_NAME_LEN ; 
 int /*<<< orphan*/  MAX_CHAP_SECRET_LEN ; 
 int QLA_ERROR ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct ql4_chap_table* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ql4_chap_table*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ql4_chap_table*,struct ql4_chap_table*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ql4_chap_table*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct scsi_qla_host*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct scsi_qla_host *ha, char *username,
			    char *password, uint16_t idx, int bidi)
{
	int ret = 0;
	int rval = QLA_ERROR;
	uint32_t offset = 0;
	struct ql4_chap_table *chap_table;
	dma_addr_t chap_dma;

	chap_table = FUNC1(ha->chap_dma_pool, GFP_KERNEL, &chap_dma);
	if (chap_table == NULL) {
		ret =  -ENOMEM;
		goto exit_set_chap;
	}

	FUNC4(chap_table, 0, sizeof(struct ql4_chap_table));
	if (bidi)
		chap_table->flags |= BIT_6; /* peer */
	else
		chap_table->flags |= BIT_7; /* local */
	chap_table->secret_len = FUNC6(password);
	FUNC7(chap_table->secret, password, MAX_CHAP_SECRET_LEN);
	FUNC7(chap_table->name, username, MAX_CHAP_NAME_LEN);
	chap_table->cookie = FUNC0(CHAP_VALID_COOKIE);
	offset = FLASH_CHAP_OFFSET | (idx * sizeof(struct ql4_chap_table));
	rval = FUNC5(ha, chap_dma, offset,
				sizeof(struct ql4_chap_table),
				FLASH_OPT_RMW_COMMIT);

	if (rval == QLA_SUCCESS && ha->chap_list) {
		/* Update ha chap_list cache */
		FUNC3((struct ql4_chap_table *)ha->chap_list + idx,
		       chap_table, sizeof(struct ql4_chap_table));
	}
	FUNC2(ha->chap_dma_pool, chap_table, chap_dma);
	if (rval != QLA_SUCCESS)
		ret =  -EINVAL;

exit_set_chap:
	return ret;
}