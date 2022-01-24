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
struct mite_struct {int /*<<< orphan*/  lock; } ;
struct mite_channel {int done; struct mite_struct* mite; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mite_channel*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC3(struct mite_channel *mite_chan)
{
	struct mite_struct *mite = mite_chan->mite;
	unsigned long flags;
	int done;

	FUNC0(mite_chan);
	FUNC1(&mite->lock, flags);
	done = mite_chan->done;
	FUNC2(&mite->lock, flags);
	return done;
}