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
 unsigned long FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(unsigned long *new_itm)
{
	unsigned long delta_itm;
	delta_itm = FUNC0(*new_itm);
	*new_itm += delta_itm;
	if (FUNC2(*new_itm, FUNC1()) && delta_itm)
		return 1;

	return 0;
}