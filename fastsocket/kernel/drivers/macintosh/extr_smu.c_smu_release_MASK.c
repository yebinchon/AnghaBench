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
struct TYPE_2__ {int status; } ;
struct smu_private {unsigned int busy; int /*<<< orphan*/  list; int /*<<< orphan*/  lock; int /*<<< orphan*/  wait; TYPE_1__ cmd; int /*<<< orphan*/  mode; } ;
struct inode {int dummy; } ;
struct file {struct smu_private* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (struct smu_private*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  smu_clist_lock ; 
 int /*<<< orphan*/  smu_file_closing ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC9(struct inode *inode, struct file *file)
{
	struct smu_private *pp = file->private_data;
	unsigned long flags;
	unsigned int busy;

	if (pp == 0)
		return 0;

	file->private_data = NULL;

	/* Mark file as closing to avoid races with new request */
	FUNC7(&pp->lock, flags);
	pp->mode = smu_file_closing;
	busy = pp->busy;

	/* Wait for any pending request to complete */
	if (busy && pp->cmd.status == 1) {
		FUNC0(wait, current);

		FUNC1(&pp->wait, &wait);
		for (;;) {
			FUNC6(TASK_UNINTERRUPTIBLE);
			if (pp->cmd.status != 1)
				break;
			FUNC8(&pp->lock, flags);
			FUNC5();
			FUNC7(&pp->lock, flags);
		}
		FUNC6(TASK_RUNNING);
		FUNC4(&pp->wait, &wait);
	}
	FUNC8(&pp->lock, flags);

	FUNC7(&smu_clist_lock, flags);
	FUNC3(&pp->list);
	FUNC8(&smu_clist_lock, flags);
	FUNC2(pp);

	return 0;
}