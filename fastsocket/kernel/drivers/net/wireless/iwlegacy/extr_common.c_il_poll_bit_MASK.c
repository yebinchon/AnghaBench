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
struct il_priv {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int FUNC0 (struct il_priv*,int) ; 
 int /*<<< orphan*/  FUNC1 (int const) ; 

int
FUNC2(struct il_priv *il, u32 addr, u32 mask, int timeout)
{
	const int interval = 10; /* microseconds */
	int t = 0;

	do {
		if ((FUNC0(il, addr) & mask) == mask)
			return t;
		FUNC1(interval);
		t += interval;
	} while (t < timeout);

	return -ETIMEDOUT;
}