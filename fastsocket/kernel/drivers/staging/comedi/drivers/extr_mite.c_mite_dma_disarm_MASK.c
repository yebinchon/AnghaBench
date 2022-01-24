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
 unsigned int CHOR_ABORT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__) ; 

void FUNC2(struct mite_channel *mite_chan)
{
	struct mite_struct *mite = mite_chan->mite;
	unsigned chor;

	/* disarm */
	chor = CHOR_ABORT;
	FUNC1(chor, mite->mite_io_addr + FUNC0(mite_chan->channel));
}