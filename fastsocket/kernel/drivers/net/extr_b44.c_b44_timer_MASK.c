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
struct b44 {int /*<<< orphan*/  timer; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ HZ ; 
 int /*<<< orphan*/  FUNC0 (struct b44*) ; 
 int /*<<< orphan*/  FUNC1 (struct b44*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(unsigned long __opaque)
{
	struct b44 *bp = (struct b44 *) __opaque;

	FUNC4(&bp->lock);

	FUNC0(bp);

	FUNC1(bp);

	FUNC5(&bp->lock);

	FUNC2(&bp->timer, FUNC3(jiffies + HZ));
}