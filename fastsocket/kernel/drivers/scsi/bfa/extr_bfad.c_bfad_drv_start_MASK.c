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
struct bfad_s {TYPE_1__* im; int /*<<< orphan*/  bfad_lock; int /*<<< orphan*/  bfad_flags; int /*<<< orphan*/  bfa_fcs; int /*<<< orphan*/  bfa; } ;
struct TYPE_2__ {int /*<<< orphan*/  drv_workq; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFAD_HAL_START_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

void
FUNC6(struct bfad_s *bfad)
{
	unsigned long	flags;

	FUNC4(&bfad->bfad_lock, flags);
	FUNC2(&bfad->bfa);
	FUNC1(&bfad->bfa_fcs);
	FUNC0(&bfad->bfa_fcs);
	bfad->bfad_flags |= BFAD_HAL_START_DONE;
	FUNC5(&bfad->bfad_lock, flags);

	if (bfad->im)
		FUNC3(bfad->im->drv_workq);
}