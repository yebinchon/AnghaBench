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
struct raw3270 {int model; int rows; int cols; TYPE_1__* view; } ;
struct TYPE_2__ {struct raw3270* dev; } ;

/* Variables and functions */
 scalar_t__ MACHINE_IS_VM ; 
 int FUNC0 (struct raw3270*) ; 
 int FUNC1 (struct raw3270*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  raw3270_init_mutex ; 
 TYPE_1__ raw3270_init_view ; 

__attribute__((used)) static int
FUNC4(struct raw3270 *rp)
{
	int rc;

	FUNC2(&raw3270_init_mutex);
	rp->view = &raw3270_init_view;
	raw3270_init_view.dev = rp;
	if (MACHINE_IS_VM)
		rc = FUNC1(rp);
	else
		rc = FUNC0(rp);
	raw3270_init_view.dev = NULL;
	rp->view = NULL;
	FUNC3(&raw3270_init_mutex);
	if (rc == 0) {	/* Found something. */
		/* Try to find a model. */
		rp->model = 0;
		if (rp->rows == 24 && rp->cols == 80)
			rp->model = 2;
		if (rp->rows == 32 && rp->cols == 80)
			rp->model = 3;
		if (rp->rows == 43 && rp->cols == 80)
			rp->model = 4;
		if (rp->rows == 27 && rp->cols == 132)
			rp->model = 5;
	} else {
		/* Couldn't detect size. Use default model 2. */
		rp->model = 2;
		rp->rows = 24;
		rp->cols = 80;
		return 0;
	}
	return rc;
}