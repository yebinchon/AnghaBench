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
struct ub_dev {scalar_t__ openc; int /*<<< orphan*/  poison; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct ub_dev*) ; 
 int /*<<< orphan*/  ub_lock ; 

__attribute__((used)) static void FUNC4(struct ub_dev *sc)
{
	unsigned long flags;

	FUNC1(&ub_lock, flags);
	--sc->openc;
	if (sc->openc == 0 && FUNC0(&sc->poison)) {
		FUNC2(&ub_lock, flags);
		FUNC3(sc);
	} else {
		FUNC2(&ub_lock, flags);
	}
}