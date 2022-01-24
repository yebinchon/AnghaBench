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
struct mite_channel {int /*<<< orphan*/  channel; scalar_t__ done; struct mite_struct* mite; } ;

/* Variables and functions */
 int CHOR_START ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  channel ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

void FUNC7(struct mite_channel *mite_chan)
{
	struct mite_struct *mite = mite_chan->mite;
	int chor;
	unsigned long flags;

	FUNC0("mite_dma_arm ch%i\n", channel);
	/* memory barrier is intended to insure any twiddling with the buffer
	   is done before writing to the mite to arm dma transfer */
	FUNC3();
	/* arm */
	chor = CHOR_START;
	FUNC4(&mite->lock, flags);
	mite_chan->done = 0;
	FUNC6(chor, mite->mite_io_addr + FUNC1(mite_chan->channel));
	FUNC2();
	FUNC5(&mite->lock, flags);
/*       mite_dma_tcr(mite, channel); */
}