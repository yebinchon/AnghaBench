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
struct hypfs_dbfs_file {int /*<<< orphan*/  data_free_work; int /*<<< orphan*/  lock; int /*<<< orphan*/  dentry; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  data_free_delayed ; 
 int /*<<< orphan*/  dbfs_dir ; 
 int /*<<< orphan*/  dbfs_ops ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct hypfs_dbfs_file*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct hypfs_dbfs_file *df)
{
	df->dentry = FUNC3(df->name, 0400, dbfs_dir, df,
					 &dbfs_ops);
	if (FUNC1(df->dentry))
		return FUNC2(df->dentry);
	FUNC4(&df->lock);
	FUNC0(&df->data_free_work, data_free_delayed);
	return 0;
}