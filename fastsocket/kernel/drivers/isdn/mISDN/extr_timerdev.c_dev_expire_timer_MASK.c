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
typedef  int /*<<< orphan*/  u_long ;
struct mISDNtimer {TYPE_1__* dev; int /*<<< orphan*/  list; } ;
struct TYPE_2__ {int /*<<< orphan*/  wait; int /*<<< orphan*/  lock; int /*<<< orphan*/  expired; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(unsigned long data)
{
	struct mISDNtimer *timer = (void *)data;
	u_long			flags;

	FUNC1(&timer->dev->lock, flags);
	FUNC0(&timer->list, &timer->dev->expired);
	FUNC2(&timer->dev->lock, flags);
	FUNC3(&timer->dev->wait);
}