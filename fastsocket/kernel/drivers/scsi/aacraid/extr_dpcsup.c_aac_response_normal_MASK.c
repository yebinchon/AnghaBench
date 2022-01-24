#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_7__ {int XferState; scalar_t__ Command; } ;
struct hw_fib {TYPE_3__ header; scalar_t__ data; } ;
struct fib {int flags; int done; int /*<<< orphan*/  event_lock; int /*<<< orphan*/  event_wait; int /*<<< orphan*/  callback_data; int /*<<< orphan*/  (* callback ) (int /*<<< orphan*/ ,struct fib*) ;struct hw_fib* hw_fib_va; } ;
struct aac_queue {int /*<<< orphan*/ * lock; struct aac_dev* dev; } ;
struct aac_entry {int /*<<< orphan*/  addr; } ;
struct aac_dev {int /*<<< orphan*/  manage_lock; int /*<<< orphan*/  management_fib_count; TYPE_2__* queues; struct fib* fibs; } ;
typedef  int __le32 ;
struct TYPE_8__ {int peak_fibs; int /*<<< orphan*/  zero_fibs; int /*<<< orphan*/  NormalRecved; int /*<<< orphan*/  AsyncRecved; int /*<<< orphan*/  NoResponseRecved; int /*<<< orphan*/  FibRecved; } ;
struct TYPE_6__ {TYPE_1__* queue; } ;
struct TYPE_5__ {int /*<<< orphan*/  numpending; } ;

/* Variables and functions */
 size_t AdapNormCmdQueue ; 
 int AdapterProcessed ; 
 int Async ; 
 int FIB_CONTEXT_FLAG_FASTRESP ; 
 int FIB_CONTEXT_FLAG_TIMED_OUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HostNormRespQueue ; 
 int NoResponseExpected ; 
 int /*<<< orphan*/  NuFileSystem ; 
 int ST_OK ; 
 TYPE_4__ aac_config ; 
 int /*<<< orphan*/  FUNC1 (struct aac_dev*,struct aac_queue*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct aac_dev*,struct aac_queue*,struct aac_entry**) ; 
 int /*<<< orphan*/  FUNC3 (struct fib*) ; 
 int /*<<< orphan*/  FUNC4 (struct fib*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct fib*) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

unsigned int FUNC13(struct aac_queue * q)
{
	struct aac_dev * dev = q->dev;
	struct aac_entry *entry;
	struct hw_fib * hwfib;
	struct fib * fib;
	int consumed = 0;
	unsigned long flags, mflags;

	FUNC8(q->lock, flags);
	/*
	 *	Keep pulling response QEs off the response queue and waking
	 *	up the waiters until there are no more QEs. We then return
	 *	back to the system. If no response was requesed we just
	 *	deallocate the Fib here and continue.
	 */
	while(FUNC2(dev, q, &entry))
	{
		int fast;
		u32 index = FUNC7(entry->addr);
		fast = index & 0x01;
		fib = &dev->fibs[index >> 2];
		hwfib = fib->hw_fib_va;
		
		FUNC1(dev, q, HostNormRespQueue);
		/*
		 *	Remove this fib from the Outstanding I/O queue.
		 *	But only if it has not already been timed out.
		 *
		 *	If the fib has been timed out already, then just 
		 *	continue. The caller has already been notified that
		 *	the fib timed out.
		 */
		dev->queues->queue[AdapNormCmdQueue].numpending--;

		if (FUNC11(fib->flags & FIB_CONTEXT_FLAG_TIMED_OUT)) {
			FUNC9(q->lock, flags);
			FUNC3(fib);
			FUNC4(fib);
			FUNC8(q->lock, flags);
			continue;
		}
		FUNC9(q->lock, flags);

		if (fast) {
			/*
			 *	Doctor the fib
			 */
			*(__le32 *)hwfib->data = FUNC6(ST_OK);
			hwfib->header.XferState |= FUNC6(AdapterProcessed);
			fib->flags |= FIB_CONTEXT_FLAG_FASTRESP;
		}

		FUNC0(aac_config.FibRecved);

		if (hwfib->header.Command == FUNC5(NuFileSystem))
		{
			__le32 *pstatus = (__le32 *)hwfib->data;
			if (*pstatus & FUNC6(0xffff0000))
				*pstatus = FUNC6(ST_OK);
		}
		if (hwfib->header.XferState & FUNC6(NoResponseExpected | Async)) 
		{
	        	if (hwfib->header.XferState & FUNC6(NoResponseExpected))
				FUNC0(aac_config.NoResponseRecved);
			else 
				FUNC0(aac_config.AsyncRecved);
			/*
			 *	NOTE:  we cannot touch the fib after this
			 *	    call, because it may have been deallocated.
			 */
			fib->flags &= FIB_CONTEXT_FLAG_FASTRESP;
			fib->callback(fib->callback_data, fib);
		} else {
			unsigned long flagv;
			FUNC8(&fib->event_lock, flagv);
			if (!fib->done) {
				fib->done = 1;
				FUNC12(&fib->event_wait);
			}
			FUNC9(&fib->event_lock, flagv);

			FUNC8(&dev->manage_lock, mflags);
			dev->management_fib_count--;
			FUNC9(&dev->manage_lock, mflags);

			FUNC0(aac_config.NormalRecved);
			if (fib->done == 2) {
				FUNC8(&fib->event_lock, flagv);
				fib->done = 0;
				FUNC9(&fib->event_lock, flagv);
				FUNC3(fib);
				FUNC4(fib);
			}
		}
		consumed++;
		FUNC8(q->lock, flags);
	}

	if (consumed > aac_config.peak_fibs)
		aac_config.peak_fibs = consumed;
	if (consumed == 0) 
		aac_config.zero_fibs++;

	FUNC9(q->lock, flags);
	return 0;
}