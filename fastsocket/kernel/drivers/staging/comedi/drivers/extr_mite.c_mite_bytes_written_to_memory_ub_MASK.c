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
typedef  scalar_t__ u32 ;
struct mite_channel {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mite_channel*) ; 
 scalar_t__ FUNC1 (struct mite_channel*) ; 

u32 FUNC2(struct mite_channel * mite_chan)
{
	u32 in_transit_count;

	in_transit_count = FUNC0(mite_chan);
	return FUNC1(mite_chan) - in_transit_count;
}