#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct file {TYPE_1__* private_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  device; } ;
typedef  TYPE_1__ scsi_changer ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  ch_index_idr ; 
 int /*<<< orphan*/  ch_index_lock ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static int
FUNC7(struct inode *inode, struct file *file)
{
	scsi_changer *ch;
	int minor = FUNC1(inode);

	FUNC2();
	FUNC4(&ch_index_lock);
	ch = FUNC0(&ch_index_idr, minor);

	if (NULL == ch || FUNC3(ch->device)) {
		FUNC5(&ch_index_lock);
		FUNC6();
		return -ENXIO;
	}
	FUNC5(&ch_index_lock);

	file->private_data = ch;
	FUNC6();
	return 0;
}