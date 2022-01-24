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
typedef  int /*<<< orphan*/  u32 ;
struct mtdoops_context {int writecount; int /*<<< orphan*/  writecount_lock; int /*<<< orphan*/ * oops_buf; int /*<<< orphan*/  nextcount; int /*<<< orphan*/  ready; struct mtd_info* mtd; } ;
struct mtd_info {int dummy; } ;
struct console {struct mtdoops_context* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTDOOPS_KERNMSG_MAGIC ; 
 unsigned int OOPS_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  oops_in_progress ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC4(struct console *co, const char *s, unsigned int count)
{
	struct mtdoops_context *cxt = co->data;
	struct mtd_info *mtd = cxt->mtd;
	unsigned long flags;

	if (!oops_in_progress) {
		FUNC1();
		return;
	}

	if (!cxt->ready || !mtd)
		return;

	/* Locking on writecount ensures sequential writes to the buffer */
	FUNC2(&cxt->writecount_lock, flags);

	/* Check ready status didn't change whilst waiting for the lock */
	if (!cxt->ready) {
		FUNC3(&cxt->writecount_lock, flags);
		return;
	}

	if (cxt->writecount == 0) {
		u32 *stamp = cxt->oops_buf;
		*stamp++ = cxt->nextcount;
		*stamp = MTDOOPS_KERNMSG_MAGIC;
		cxt->writecount = 8;
	}

	if ((count + cxt->writecount) > OOPS_PAGE_SIZE)
		count = OOPS_PAGE_SIZE - cxt->writecount;

	FUNC0(cxt->oops_buf + cxt->writecount, s, count);
	cxt->writecount += count;

	FUNC3(&cxt->writecount_lock, flags);

	if (cxt->writecount == OOPS_PAGE_SIZE)
		FUNC1();
}