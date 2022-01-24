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
struct scsi_tape {scalar_t__ door_locked; scalar_t__ in_use; int /*<<< orphan*/  buffer; } ;
struct inode {int dummy; } ;
struct file {struct scsi_tape* private_data; } ;

/* Variables and functions */
 scalar_t__ ST_LOCKED_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct scsi_tape*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_tape*) ; 
 int /*<<< orphan*/  st_dev_arr_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *filp)
{
	int result = 0;
	struct scsi_tape *STp = filp->private_data;

	if (STp->door_locked == ST_LOCKED_AUTO)
		FUNC0(STp, 0);

	FUNC1(STp->buffer);
	FUNC3(&st_dev_arr_lock);
	STp->in_use = 0;
	FUNC4(&st_dev_arr_lock);
	FUNC2(STp);

	return result;
}