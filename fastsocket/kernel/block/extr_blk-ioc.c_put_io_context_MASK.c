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
struct io_context {TYPE_1__* aic; int /*<<< orphan*/  refcount; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* dtor ) (TYPE_1__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct io_context*) ; 
 int /*<<< orphan*/  iocontext_cachep ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct io_context*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

int FUNC8(struct io_context *ioc)
{
	if (ioc == NULL)
		return 1;

	FUNC0(FUNC2(&ioc->refcount) == 0);

	if (FUNC1(&ioc->refcount)) {
		FUNC5();
		if (ioc->aic && ioc->aic->dtor)
			ioc->aic->dtor(ioc->aic);
		FUNC3(ioc);
		FUNC6();

		FUNC4(iocontext_cachep, ioc);
		return 1;
	}
	return 0;
}