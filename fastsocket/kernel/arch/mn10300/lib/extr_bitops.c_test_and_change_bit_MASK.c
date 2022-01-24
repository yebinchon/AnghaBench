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
 scalar_t__ FUNC0 (int,void volatile*) ; 
 int /*<<< orphan*/  FUNC1 (int,void volatile*) ; 
 scalar_t__ FUNC2 (int,void volatile*) ; 

int FUNC3(int nr, volatile void *addr)
{
	if (FUNC2(nr, addr))
		goto try_clear_bit;

try_set_bit:
	if (!FUNC1(nr, addr))
		return 0;

try_clear_bit:
	if (FUNC0(nr, addr))
		return 1;

	goto try_set_bit;
}