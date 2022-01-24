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
typedef  union map_info {int dummy; } map_info ;
struct request {int /*<<< orphan*/  cmd_flags; } ;
struct multipath {int dummy; } ;
struct dm_target {scalar_t__ private; } ;

/* Variables and functions */
 int DM_MAPIO_REQUEUE ; 
 int /*<<< orphan*/  REQ_FAILFAST_TRANSPORT ; 
 int /*<<< orphan*/  FUNC0 (struct multipath*,union map_info*) ; 
 int FUNC1 (struct multipath*,struct request*,union map_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct multipath*,union map_info*) ; 

__attribute__((used)) static int FUNC3(struct dm_target *ti, struct request *clone,
			 union map_info *map_context)
{
	int r;
	struct multipath *m = (struct multipath *) ti->private;

	if (FUNC2(m, map_context) < 0)
		/* ENOMEM, requeue */
		return DM_MAPIO_REQUEUE;

	clone->cmd_flags |= REQ_FAILFAST_TRANSPORT;
	r = FUNC1(m, clone, map_context, 0);
	if (r < 0 || r == DM_MAPIO_REQUEUE)
		FUNC0(m, map_context);

	return r;
}