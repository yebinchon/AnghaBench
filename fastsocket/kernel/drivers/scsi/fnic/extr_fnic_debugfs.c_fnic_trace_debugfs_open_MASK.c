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
struct inode {int dummy; } ;
struct file {TYPE_1__* private_data; } ;
struct TYPE_5__ {int /*<<< orphan*/  buffer_len; scalar_t__ buffer; } ;
typedef  TYPE_1__ fnic_dbgfs_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,int) ; 
 int trace_max_pages ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct inode *inode,
				  struct file *file)
{
	fnic_dbgfs_t *fnic_dbg_prt;
	fnic_dbg_prt = FUNC2(sizeof(fnic_dbgfs_t), GFP_KERNEL);
	if (!fnic_dbg_prt)
		return -ENOMEM;

	fnic_dbg_prt->buffer = FUNC4((3*(trace_max_pages * PAGE_SIZE)));
	if (!fnic_dbg_prt->buffer) {
		FUNC1(fnic_dbg_prt);
		return -ENOMEM;
	}
	FUNC3((void *)fnic_dbg_prt->buffer, 0,
			  (3*(trace_max_pages * PAGE_SIZE)));
	fnic_dbg_prt->buffer_len = FUNC0(fnic_dbg_prt);
	file->private_data = fnic_dbg_prt;
	return 0;
}