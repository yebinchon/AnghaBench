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
struct scsi_dev_info_list_table {char const* name; int key; int /*<<< orphan*/  node; int /*<<< orphan*/  scsi_dev_info_list; } ;

/* Variables and functions */
 int EEXIST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_dev_info_list_table*) ; 
 struct scsi_dev_info_list_table* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  scsi_dev_info_list ; 
 struct scsi_dev_info_list_table* FUNC4 (int) ; 

int FUNC5(int key, const char *name)
{
	struct scsi_dev_info_list_table *devinfo_table =
		FUNC4(key);

	if (!FUNC1(devinfo_table))
		/* list already exists */
		return -EEXIST;

	devinfo_table = FUNC2(sizeof(*devinfo_table), GFP_KERNEL);

	if (!devinfo_table)
		return -ENOMEM;

	FUNC0(&devinfo_table->node);
	FUNC0(&devinfo_table->scsi_dev_info_list);
	devinfo_table->name = name;
	devinfo_table->key = key;
	FUNC3(&devinfo_table->node, &scsi_dev_info_list);

	return 0;
}