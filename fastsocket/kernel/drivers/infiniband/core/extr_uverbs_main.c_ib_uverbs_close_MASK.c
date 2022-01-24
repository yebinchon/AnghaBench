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
struct inode {int dummy; } ;
struct ib_uverbs_file {int /*<<< orphan*/  ref; TYPE_1__* async_file; int /*<<< orphan*/  ucontext; } ;
struct file {struct ib_uverbs_file* private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ib_uverbs_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ib_uverbs_release_event_file ; 
 int /*<<< orphan*/  ib_uverbs_release_file ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct inode *inode, struct file *filp)
{
	struct ib_uverbs_file *file = filp->private_data;

	FUNC0(file, file->ucontext);

	if (file->async_file)
		FUNC1(&file->async_file->ref, ib_uverbs_release_event_file);

	FUNC1(&file->ref, ib_uverbs_release_file);

	return 0;
}