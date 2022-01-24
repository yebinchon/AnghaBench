#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* i2eBordStrPtr ;
struct TYPE_4__ {int i2eFifoRemains; int /*<<< orphan*/  write_fifo_spinlock; int /*<<< orphan*/  i2eOutMailWaiting; int /*<<< orphan*/  i2eWaitingForEmptyFifo; } ;

/* Variables and functions */
 int /*<<< orphan*/  MB_OUT_STUFFED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC3(i2eBordStrPtr pB, unsigned char *source, int count,int reserve)
{
	int rc = 0;
	unsigned long flags;
	FUNC1(&pB->write_fifo_spinlock, flags);
	if (!pB->i2eWaitingForEmptyFifo) {
		if (pB->i2eFifoRemains > (count+reserve)) {
			pB->i2eFifoRemains -= count;
			FUNC0(pB, source, count);
			pB->i2eOutMailWaiting |= MB_OUT_STUFFED;
			rc =  count;
		}
	}
	FUNC2(&pB->write_fifo_spinlock, flags);
	return rc;
}