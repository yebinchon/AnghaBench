#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int ioc_comp_status; int /*<<< orphan*/  ioc_comp; } ;
struct TYPE_3__ {int /*<<< orphan*/  ioceth; } ;
struct bnad {TYPE_2__ bnad_completions; int /*<<< orphan*/  bna_lock; TYPE_1__ bna; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNAD_IOCETH_TIMEOUT ; 
 int BNA_CB_WAITING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct bnad *bnad)
{
	int err = 0;
	unsigned long flags;

	FUNC3(&bnad->bna_lock, flags);
	FUNC1(&bnad->bnad_completions.ioc_comp);
	bnad->bnad_completions.ioc_comp_status = BNA_CB_WAITING;
	FUNC0(&bnad->bna.ioceth);
	FUNC4(&bnad->bna_lock, flags);

	FUNC5(&bnad->bnad_completions.ioc_comp,
		FUNC2(BNAD_IOCETH_TIMEOUT));

	err = bnad->bnad_completions.ioc_comp_status;

	return err;
}