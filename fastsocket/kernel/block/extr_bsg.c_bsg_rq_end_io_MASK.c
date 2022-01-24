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
struct request {struct bsg_command* end_io_data; } ;
struct bsg_device {int /*<<< orphan*/  wq_done; int /*<<< orphan*/  lock; int /*<<< orphan*/  done_cmds; int /*<<< orphan*/  done_list; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {scalar_t__ duration; } ;
struct bsg_command {int /*<<< orphan*/  list; TYPE_1__ hdr; int /*<<< orphan*/  bio; struct bsg_device* bd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,struct request*,struct bsg_command*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct request *rq, int uptodate)
{
	struct bsg_command *bc = rq->end_io_data;
	struct bsg_device *bd = bc->bd;
	unsigned long flags;

	FUNC0("%s: finished rq %p bc %p, bio %p stat %d\n",
		bd->name, rq, bc, bc->bio, uptodate);

	bc->hdr.duration = FUNC1(jiffies - bc->hdr.duration);

	FUNC3(&bd->lock, flags);
	FUNC2(&bc->list, &bd->done_list);
	bd->done_cmds++;
	FUNC4(&bd->lock, flags);

	FUNC5(&bd->wq_done);
}