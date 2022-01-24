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
struct super_block {int dummy; } ;
struct diag2fc_data {int /*<<< orphan*/  lcpus; } ;
struct dentry {int /*<<< orphan*/  lcpus; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct diag2fc_data*) ; 
 int FUNC1 (struct diag2fc_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct diag2fc_data*) ; 
 struct diag2fc_data* FUNC3 (int /*<<< orphan*/ ,unsigned int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  guest_query ; 
 int FUNC4 (struct super_block*,struct diag2fc_data*,struct diag2fc_data*) ; 
 struct diag2fc_data* FUNC5 (struct super_block*,struct diag2fc_data*,char*,char*) ; 
 struct diag2fc_data* FUNC6 (struct super_block*,struct diag2fc_data*,char*,int /*<<< orphan*/ ) ; 
 struct diag2fc_data* FUNC7 (struct super_block*,struct diag2fc_data*,char*) ; 

int FUNC8(struct super_block *sb, struct dentry *root)
{
	struct dentry *dir, *file;
	struct diag2fc_data *data;
	unsigned int count = 0;
	int rc, i;

	data = FUNC3(guest_query, &count, 0);
	if (FUNC0(data))
		return FUNC1(data);

	/* Hpervisor Info */
	dir = FUNC7(sb, root, "hyp");
	if (FUNC0(dir)) {
		rc = FUNC1(dir);
		goto failed;
	}
	file = FUNC5(sb, dir, "type", "z/VM Hypervisor");
	if (FUNC0(file)) {
		rc = FUNC1(file);
		goto failed;
	}

	/* physical cpus */
	dir = FUNC7(sb, root, "cpus");
	if (FUNC0(dir)) {
		rc = FUNC1(dir);
		goto failed;
	}
	file = FUNC6(sb, dir, "count", data->lcpus);
	if (FUNC0(file)) {
		rc = FUNC1(file);
		goto failed;
	}

	/* guests */
	dir = FUNC7(sb, root, "systems");
	if (FUNC0(dir)) {
		rc = FUNC1(dir);
		goto failed;
	}

	for (i = 0; i < count; i++) {
		rc = FUNC4(sb, dir, &(data[i]));
		if (rc)
			goto failed;
	}
	FUNC2(data);
	return 0;

failed:
	FUNC2(data);
	return rc;
}