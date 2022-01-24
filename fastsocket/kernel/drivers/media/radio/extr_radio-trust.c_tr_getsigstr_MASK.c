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
struct trust {int /*<<< orphan*/  lock; int /*<<< orphan*/  io; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct trust *tr)
{
	int i, v;

	FUNC1(&tr->lock);
	for (i = 0, v = 0; i < 100; i++)
		v |= FUNC0(tr->io);
	FUNC2(&tr->lock);
	return (v & 1) ? 0 : 0xffff;
}