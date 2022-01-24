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
struct subchannel {int /*<<< orphan*/  schib; int /*<<< orphan*/  schid; } ;
struct schib {int dummy; } ;
typedef  int /*<<< orphan*/  schib ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct schib*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct schib*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct schib*) ; 

int FUNC3(struct subchannel *sch)
{
	struct schib schib;

	if (FUNC2(sch->schid, &schib) || !FUNC0(&schib))
		return -ENODEV;

	FUNC1(&sch->schib, &schib, sizeof(schib));
	return 0;
}