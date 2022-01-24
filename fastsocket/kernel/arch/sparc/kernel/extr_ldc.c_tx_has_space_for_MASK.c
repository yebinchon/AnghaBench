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
struct ldc_channel {unsigned long tx_tail; unsigned long tx_num_entries; unsigned int mss; } ;

/* Variables and functions */
 unsigned long LDC_PACKET_SIZE ; 
 unsigned long FUNC0 (struct ldc_channel*) ; 
 unsigned long FUNC1 (struct ldc_channel*,unsigned long) ; 

__attribute__((used)) static int FUNC2(struct ldc_channel *lp, unsigned int size)
{
	unsigned long limit, tail, new_tail, diff;
	unsigned int mss;

	limit = FUNC0(lp);
	tail = lp->tx_tail;
	new_tail = FUNC1(lp, tail);
	if (new_tail == limit)
		return 0;

	if (limit > new_tail)
		diff = limit - new_tail;
	else
		diff = (limit +
			((lp->tx_num_entries * LDC_PACKET_SIZE) - new_tail));
	diff /= LDC_PACKET_SIZE;
	mss = lp->mss;

	if (diff * mss < size)
		return 0;

	return 1;
}