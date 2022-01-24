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
struct inode {int dummy; } ;
struct file {struct adbdev_state* private_data; } ;
struct adbdev_state {int inuse; int /*<<< orphan*/  wait_queue; int /*<<< orphan*/ * completed; int /*<<< orphan*/  n_pending; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/ * adb_controller ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct adbdev_state* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static int FUNC7(struct inode *inode, struct file *file)
{
	struct adbdev_state *state;
	int ret = 0;

	FUNC4();
	if (FUNC1(inode) > 0 || adb_controller == NULL) {
		ret = -ENXIO;
		goto out;
	}
	state = FUNC3(sizeof(struct adbdev_state), GFP_KERNEL);
	if (state == 0) {
		ret = -ENOMEM;
		goto out;
	}
	file->private_data = state;
	FUNC5(&state->lock);
	FUNC0(&state->n_pending, 0);
	state->completed = NULL;
	FUNC2(&state->wait_queue);
	state->inuse = 1;

out:
	FUNC6();
	return ret;
}