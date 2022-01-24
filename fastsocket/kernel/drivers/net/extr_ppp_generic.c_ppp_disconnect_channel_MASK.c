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
struct TYPE_2__ {int /*<<< orphan*/  refcnt; int /*<<< orphan*/  rwait; } ;
struct ppp {scalar_t__ n_channels; TYPE_1__ file; } ;
struct channel {int /*<<< orphan*/  clist; int /*<<< orphan*/  upl; struct ppp* ppp; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ppp*) ; 
 int /*<<< orphan*/  FUNC3 (struct ppp*) ; 
 int /*<<< orphan*/  FUNC4 (struct ppp*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(struct channel *pch)
{
	struct ppp *ppp;
	int err = -EINVAL;

	FUNC6(&pch->upl);
	ppp = pch->ppp;
	pch->ppp = NULL;
	FUNC7(&pch->upl);
	if (ppp) {
		/* remove it from the ppp unit's list */
		FUNC3(ppp);
		FUNC1(&pch->clist);
		if (--ppp->n_channels == 0)
			FUNC5(&ppp->file.rwait);
		FUNC4(ppp);
		if (FUNC0(&ppp->file.refcnt))
			FUNC2(ppp);
		err = 0;
	}
	return err;
}