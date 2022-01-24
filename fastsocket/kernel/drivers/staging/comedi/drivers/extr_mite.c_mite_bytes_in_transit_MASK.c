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
typedef  int u32 ;
struct mite_struct {scalar_t__ mite_io_addr; } ;
struct mite_channel {int /*<<< orphan*/  channel; struct mite_struct* mite; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 

u32 FUNC2(struct mite_channel * mite_chan)
{
	struct mite_struct *mite = mite_chan->mite;
	return FUNC1(mite->mite_io_addr +
		     FUNC0(mite_chan->channel)) & 0x000000FF;
}