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
 int GSC_STAT_TBNE ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(char *addr)
{
	int timeout = 25000; /* device is expected to react within 250 msec */
	while (FUNC0(addr) & GSC_STAT_TBNE) {
		if (!--timeout)
			return 0;	/* This should not happen */
		FUNC1(10);
	}
	return 1;
}