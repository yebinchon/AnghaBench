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
struct ub_dev {int /*<<< orphan*/  lock; int /*<<< orphan*/  work_urb; int /*<<< orphan*/  work_done; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(unsigned long arg)
{
	struct ub_dev *sc = (struct ub_dev *) arg;
	unsigned long flags;

	FUNC0(sc->lock, flags);
	if (!FUNC2(&sc->work_done))
		FUNC3(&sc->work_urb);
	FUNC1(sc->lock, flags);
}