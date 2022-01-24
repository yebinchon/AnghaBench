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
struct bnx2x {int /*<<< orphan*/  stats_sema; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct bnx2x *bp)
{
	if (FUNC2(&bp->stats_sema, HZ/10))
		FUNC0("Unable to acquire stats lock\n");
	FUNC1(bp);
	FUNC3(&bp->stats_sema);
}