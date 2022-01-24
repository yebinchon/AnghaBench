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
struct bsg_device {scalar_t__ queued_cmds; scalar_t__ max_queue; int /*<<< orphan*/  lock; int /*<<< orphan*/  name; } ;
struct bsg_command {int /*<<< orphan*/  list; struct bsg_device* bd; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct bsg_command* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bsg_cmd_cachep ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,struct bsg_command*) ; 
 struct bsg_command* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static struct bsg_command *FUNC7(struct bsg_device *bd)
{
	struct bsg_command *bc = FUNC0(-EINVAL);

	FUNC4(&bd->lock);

	if (bd->queued_cmds >= bd->max_queue)
		goto out;

	bd->queued_cmds++;
	FUNC5(&bd->lock);

	bc = FUNC3(bsg_cmd_cachep, GFP_KERNEL);
	if (FUNC6(!bc)) {
		FUNC4(&bd->lock);
		bd->queued_cmds--;
		bc = FUNC0(-ENOMEM);
		goto out;
	}

	bc->bd = bd;
	FUNC1(&bc->list);
	FUNC2("%s: returning free cmd %p\n", bd->name, bc);
	return bc;
out:
	FUNC5(&bd->lock);
	return bc;
}