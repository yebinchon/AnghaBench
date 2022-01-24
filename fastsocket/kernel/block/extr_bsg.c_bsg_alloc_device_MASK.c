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
struct bsg_device {int /*<<< orphan*/  wq_done; int /*<<< orphan*/  wq_free; int /*<<< orphan*/  dev_list; int /*<<< orphan*/  done_list; int /*<<< orphan*/  busy_list; int /*<<< orphan*/  max_queue; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  BSG_DEFAULT_CMDS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct bsg_device* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static struct bsg_device *FUNC6(void)
{
	struct bsg_device *bd;

	bd = FUNC3(sizeof(struct bsg_device), GFP_KERNEL);
	if (FUNC5(!bd))
		return NULL;

	FUNC4(&bd->lock);

	bd->max_queue = BSG_DEFAULT_CMDS;

	FUNC1(&bd->busy_list);
	FUNC1(&bd->done_list);
	FUNC0(&bd->dev_list);

	FUNC2(&bd->wq_free);
	FUNC2(&bd->wq_done);
	return bd;
}