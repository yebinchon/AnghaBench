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
struct subchannel {int /*<<< orphan*/  lock; int /*<<< orphan*/  schid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (struct subchannel*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(unsigned long data)
{
	struct subchannel *sch = (struct subchannel *) data;

	FUNC3(sch->lock);
	FUNC0(1, "timeout");
	FUNC1(1, &sch->schid, sizeof(sch->schid));
	if (FUNC2(sch))
		FUNC0(0, "clear failed");
	FUNC4(sch->lock);
}