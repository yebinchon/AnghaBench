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
struct mtdoops_context {scalar_t__ writecount; int /*<<< orphan*/  work_write; int /*<<< orphan*/  writecount_lock; scalar_t__ ready; struct mtd_info* mtd; } ;
struct mtd_info {scalar_t__ panic_write; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct mtdoops_context*,int) ; 
 struct mtdoops_context oops_cxt ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(void)
{
	struct mtdoops_context *cxt = &oops_cxt;
	struct mtd_info *mtd = cxt->mtd;
	unsigned long flags;

	if (!cxt->ready || !mtd || cxt->writecount == 0)
		return;

	/* 
	 *  Once ready is 0 and we've held the lock no further writes to the 
	 *  buffer will happen
	 */
	FUNC3(&cxt->writecount_lock, flags);
	if (!cxt->ready) {
		FUNC4(&cxt->writecount_lock, flags);
		return;
	}
	cxt->ready = 0;
	FUNC4(&cxt->writecount_lock, flags);

	if (mtd->panic_write && FUNC0())
		/* Interrupt context, we're going to panic so try and log */
		FUNC1(cxt, 1);
	else
		FUNC2(&cxt->work_write);
}