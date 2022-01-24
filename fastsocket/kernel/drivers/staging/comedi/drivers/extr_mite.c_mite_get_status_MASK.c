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
struct mite_struct {int /*<<< orphan*/  lock; scalar_t__ mite_io_addr; } ;
struct mite_channel {int done; int /*<<< orphan*/  channel; struct mite_struct* mite; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHOR_CLRDONE ; 
 unsigned int CHSR_DONE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 unsigned int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

unsigned FUNC7(struct mite_channel *mite_chan)
{
	struct mite_struct *mite = mite_chan->mite;
	unsigned status;
	unsigned long flags;

	FUNC4(&mite->lock, flags);
	status = FUNC3(mite->mite_io_addr + FUNC1(mite_chan->channel));
	if (status & CHSR_DONE) {
		mite_chan->done = 1;
		FUNC6(CHOR_CLRDONE,
		       mite->mite_io_addr + FUNC0(mite_chan->channel));
	}
	FUNC2();
	FUNC5(&mite->lock, flags);
	return status;
}