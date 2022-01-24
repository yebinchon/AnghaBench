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
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ ) ; 

void FUNC1(int qlm, int bits)
{
	while (bits > 0) {
		int n = bits;
		if (n > 32)
			n = 32;
		FUNC0(qlm, n, 0);
		bits -= n;
	}
}