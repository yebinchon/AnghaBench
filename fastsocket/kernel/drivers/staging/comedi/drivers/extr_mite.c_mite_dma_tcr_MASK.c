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
struct mite_struct {scalar_t__ mite_io_addr; } ;
struct mite_channel {int /*<<< orphan*/  channel; struct mite_struct* mite; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__) ; 

unsigned FUNC4(struct mite_channel *mite_chan)
{
	struct mite_struct *mite = mite_chan->mite;
	int tcr;
	int lkar;

	lkar = FUNC3(mite->mite_io_addr + FUNC1(mite_chan->channel));
	tcr = FUNC3(mite->mite_io_addr + FUNC2(mite_chan->channel));
	FUNC0("mite_dma_tcr ch%i, lkar=0x%08x tcr=%d\n", mite_chan->channel,
		 lkar, tcr);

	return tcr;
}