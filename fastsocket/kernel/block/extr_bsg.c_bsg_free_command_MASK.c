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
struct bsg_device {int /*<<< orphan*/  wq_free; int /*<<< orphan*/  lock; int /*<<< orphan*/  queued_cmds; } ;
struct bsg_command {struct bsg_device* bd; } ;

/* Variables and functions */
 int /*<<< orphan*/  bsg_cmd_cachep ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct bsg_command*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct bsg_command *bc)
{
	struct bsg_device *bd = bc->bd;
	unsigned long flags;

	FUNC0(bsg_cmd_cachep, bc);

	FUNC1(&bd->lock, flags);
	bd->queued_cmds--;
	FUNC2(&bd->lock, flags);

	FUNC3(&bd->wq_free);
}