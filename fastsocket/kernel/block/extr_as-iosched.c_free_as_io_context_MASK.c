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
struct as_io_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  as_ioc_count ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ioc_gone ; 
 int /*<<< orphan*/  ioc_gone_lock ; 
 int /*<<< orphan*/  FUNC3 (struct as_io_context*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct as_io_context *aic)
{
	FUNC3(aic);
	FUNC1(as_ioc_count);
	if (ioc_gone) {
		/*
		 * AS scheduler is exiting, grab exit lock and check
		 * the pending io context count. If it hits zero,
		 * complete ioc_gone and set it back to NULL.
		 */
		FUNC4(&ioc_gone_lock);
		if (ioc_gone && !FUNC2(as_ioc_count)) {
			FUNC0(ioc_gone);
			ioc_gone = NULL;
		}
		FUNC5(&ioc_gone_lock);
	}
}