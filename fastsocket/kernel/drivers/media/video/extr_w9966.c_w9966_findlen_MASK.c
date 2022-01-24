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

/* Variables and functions */
 int FUNC0 (int) ; 

__attribute__((used)) static int FUNC1(int near, int size, int maxlen)
{
	int bestlen = size;
	int besterr = FUNC0(near - bestlen);
	int len;

	for(len = size+1;len < maxlen;len++)
	{
		int err;
		if ( ((64*size) %len) != 0)
			continue;

		err = FUNC0(near - len);

		// Only continue as long as we keep getting better values
		if (err > besterr)
			break;

		besterr = err;
		bestlen = len;
	}

	return bestlen;
}