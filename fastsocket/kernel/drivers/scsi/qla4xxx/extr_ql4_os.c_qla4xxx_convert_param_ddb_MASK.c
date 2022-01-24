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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint16_t ;
struct ql4_tuple_ddb {int /*<<< orphan*/ * isid; void* port; int /*<<< orphan*/  ip_addr; int /*<<< orphan*/ * iscsi_name; int /*<<< orphan*/  tpgt; } ;
struct dev_db_entry {int /*<<< orphan*/ * isid; int /*<<< orphan*/  port; int /*<<< orphan*/  ip_addr; int /*<<< orphan*/  options; int /*<<< orphan*/ * iscsi_name; int /*<<< orphan*/  tgt_portal_grp; } ;

/* Variables and functions */
 int DDB_OPT_IPV6_DEVICE ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct dev_db_entry *fw_ddb_entry,
				      struct ql4_tuple_ddb *tddb,
				      uint8_t *flash_isid)
{
	uint16_t options = 0;

	tddb->tpgt = FUNC1(fw_ddb_entry->tgt_portal_grp);
	FUNC2(&tddb->iscsi_name[0], &fw_ddb_entry->iscsi_name[0],
	       FUNC3(sizeof(tddb->iscsi_name), sizeof(fw_ddb_entry->iscsi_name)));

	options = FUNC0(fw_ddb_entry->options);
	if (options & DDB_OPT_IPV6_DEVICE)
		FUNC4(tddb->ip_addr, "%pI6", fw_ddb_entry->ip_addr);
	else
		FUNC4(tddb->ip_addr, "%pI4", fw_ddb_entry->ip_addr);

	tddb->port = FUNC0(fw_ddb_entry->port);

	if (flash_isid == NULL)
		FUNC2(&tddb->isid[0], &fw_ddb_entry->isid[0],
		       sizeof(tddb->isid));
	else
		FUNC2(&tddb->isid[0], &flash_isid[0], sizeof(tddb->isid));
}