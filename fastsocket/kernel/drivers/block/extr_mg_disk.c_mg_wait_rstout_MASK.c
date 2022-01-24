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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 unsigned int MG_ERR_NONE ; 
 unsigned int MG_ERR_RSTOUT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 

__attribute__((used)) static unsigned int FUNC4(u32 rstout, u32 msec)
{
	unsigned long expire;

	expire = jiffies + FUNC1(msec);
	while (FUNC3(jiffies, expire)) {
		if (FUNC0(rstout) == 1)
			return MG_ERR_NONE;
		FUNC2(10);
	}

	return MG_ERR_RSTOUT;
}