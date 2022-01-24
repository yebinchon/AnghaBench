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
struct TYPE_2__ {int /*<<< orphan*/  ioc; } ;
struct bfad_s {scalar_t__ disable_active; int /*<<< orphan*/  disable_comp; int /*<<< orphan*/  bfad_lock; TYPE_1__ bfa; } ;
struct bfa_bsg_gen_s {void* status; } ;

/* Variables and functions */
 scalar_t__ BFA_FALSE ; 
 void* BFA_STATUS_OK ; 
 scalar_t__ BFA_TRUE ; 
 int EBUSY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6(struct bfad_s *bfad, void *cmd)
{
	struct bfa_bsg_gen_s *iocmd = (struct bfa_bsg_gen_s *)cmd;
	int	rc = 0;
	unsigned long	flags;

	FUNC3(&bfad->bfad_lock, flags);
	if (FUNC0(&bfad->bfa.ioc)) {
		FUNC4(&bfad->bfad_lock, flags);
		iocmd->status = BFA_STATUS_OK;
		return rc;
	}

	if (bfad->disable_active) {
		FUNC4(&bfad->bfad_lock, flags);
		return -EBUSY;
	}

	bfad->disable_active = BFA_TRUE;
	FUNC2(&bfad->disable_comp);
	FUNC1(&bfad->bfa);
	FUNC4(&bfad->bfad_lock, flags);

	FUNC5(&bfad->disable_comp);
	bfad->disable_active = BFA_FALSE;
	iocmd->status = BFA_STATUS_OK;

	return rc;
}