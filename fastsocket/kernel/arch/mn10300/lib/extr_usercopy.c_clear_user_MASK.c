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
 int /*<<< orphan*/  VERIFY_WRITE ; 
 int /*<<< orphan*/  FUNC0 (void*,unsigned long) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,void*,unsigned long) ; 

unsigned long
FUNC2(void *to, unsigned long n)
{
	if (FUNC1(VERIFY_WRITE, to, n))
		FUNC0(to, n);
	return n;
}