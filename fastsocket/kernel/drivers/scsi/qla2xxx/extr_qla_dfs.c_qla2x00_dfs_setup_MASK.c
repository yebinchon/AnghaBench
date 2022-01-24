#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct qla_hw_data {int /*<<< orphan*/  dfs_fce; void* dfs_dir; int /*<<< orphan*/  fce_mutex; int /*<<< orphan*/  fce; } ;
struct TYPE_5__ {int /*<<< orphan*/  host_str; struct qla_hw_data* hw; } ;
typedef  TYPE_1__ scsi_qla_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  QLA2XXX_DRIVER_NAME ; 
 int /*<<< orphan*/  S_IRUSR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,void*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dfs_fce_ops ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_1__*,int,char*) ; 
 int /*<<< orphan*/  ql_log_warn ; 
 int /*<<< orphan*/ * qla2x00_dfs_root ; 
 int /*<<< orphan*/  qla2x00_dfs_root_count ; 

int
FUNC9(scsi_qla_host_t *vha)
{
	struct qla_hw_data *ha = vha->hw;

	if (!FUNC0(ha) && !FUNC1(ha) && !FUNC2(ha))
		goto out;
	if (!ha->fce)
		goto out;

	if (qla2x00_dfs_root)
		goto create_dir;

	FUNC4(&qla2x00_dfs_root_count, 0);
	qla2x00_dfs_root = FUNC5(QLA2XXX_DRIVER_NAME, NULL);
	if (!qla2x00_dfs_root) {
		FUNC8(ql_log_warn, vha, 0x00f7,
		    "Unable to create debugfs root directory.\n");
		goto out;
	}

create_dir:
	if (ha->dfs_dir)
		goto create_nodes;

	FUNC7(&ha->fce_mutex);
	ha->dfs_dir = FUNC5(vha->host_str, qla2x00_dfs_root);
	if (!ha->dfs_dir) {
		FUNC8(ql_log_warn, vha, 0x00f8,
		    "Unable to create debugfs ha directory.\n");
		goto out;
	}

	FUNC3(&qla2x00_dfs_root_count);

create_nodes:
	ha->dfs_fce = FUNC6("fce", S_IRUSR, ha->dfs_dir, vha,
	    &dfs_fce_ops);
	if (!ha->dfs_fce) {
		FUNC8(ql_log_warn, vha, 0x00f9,
		    "Unable to create debugfs fce node.\n");
		goto out;
	}
out:
	return 0;
}