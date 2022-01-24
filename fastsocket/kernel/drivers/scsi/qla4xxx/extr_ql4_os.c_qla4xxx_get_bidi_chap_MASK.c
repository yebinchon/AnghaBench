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
struct TYPE_2__ {int flt_chap_size; } ;
struct scsi_qla_host {int /*<<< orphan*/  chap_sem; scalar_t__ chap_list; TYPE_1__ hw; } ;
struct ql4_chap_table {scalar_t__ cookie; int flags; int /*<<< orphan*/  name; int /*<<< orphan*/  secret; } ;

/* Variables and functions */
 int BIT_6 ; 
 int BIT_7 ; 
 int /*<<< orphan*/  CHAP_VALID_COOKIE ; 
 int EINVAL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int MAX_CHAP_ENTRIES_40XX ; 
 int /*<<< orphan*/  QL4_CHAP_MAX_NAME_LEN ; 
 int /*<<< orphan*/  QL4_CHAP_MAX_SECRET_LEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct scsi_qla_host*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct scsi_qla_host *ha, char *username,
			    char *password)
{
	int i, ret = -EINVAL;
	int max_chap_entries = 0;
	struct ql4_chap_table *chap_table;

	if (FUNC1(ha))
		max_chap_entries = (ha->hw.flt_chap_size / 2) /
						sizeof(struct ql4_chap_table);
	else
		max_chap_entries = MAX_CHAP_ENTRIES_40XX;

	if (!ha->chap_list) {
		FUNC4(KERN_ERR, ha, "Do not have CHAP table cache\n");
		return ret;
	}

	FUNC2(&ha->chap_sem);
	for (i = 0; i < max_chap_entries; i++) {
		chap_table = (struct ql4_chap_table *)ha->chap_list + i;
		if (chap_table->cookie !=
		    FUNC0(CHAP_VALID_COOKIE)) {
			continue;
		}

		if (chap_table->flags & BIT_7) /* local */
			continue;

		if (!(chap_table->flags & BIT_6)) /* Not BIDI */
			continue;

		FUNC5(password, chap_table->secret, QL4_CHAP_MAX_SECRET_LEN);
		FUNC5(username, chap_table->name, QL4_CHAP_MAX_NAME_LEN);
		ret = 0;
		break;
	}
	FUNC3(&ha->chap_sem);

	return ret;
}