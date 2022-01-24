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
struct scsi_qla_host {int dummy; } ;
struct iscsi_session {struct ddb_entry* dd_data; } ;
struct iscsi_cls_session {struct iscsi_session* dd_data; } ;
struct ddb_entry {scalar_t__ ddb_type; int /*<<< orphan*/  flags; struct scsi_qla_host* ha; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DF_DISABLE_RELOGIN ; 
 int /*<<< orphan*/  DF_RELOGIN ; 
 scalar_t__ FLASH_DDB ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC1 (struct iscsi_cls_session*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct scsi_qla_host*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct iscsi_cls_session*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct iscsi_cls_session *cls_sess)
{
	struct iscsi_session *sess;
	struct ddb_entry *ddb_entry;
	struct scsi_qla_host *ha;

	sess = cls_sess->dd_data;
	ddb_entry = sess->dd_data;
	ha = ddb_entry->ha;

	if (!(ddb_entry->ddb_type == FLASH_DDB))
		return;

	if (FUNC5(DF_DISABLE_RELOGIN, &ddb_entry->flags))
		return;

	if (FUNC4(DF_RELOGIN, &ddb_entry->flags) &&
	    !FUNC1(cls_sess)) {
		FUNC0(FUNC2(KERN_INFO, ha,
				  "relogin issued\n"));
		FUNC3(cls_sess);
	}
}