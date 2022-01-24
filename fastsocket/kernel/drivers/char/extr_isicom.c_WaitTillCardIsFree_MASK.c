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
 unsigned int FUNC0 () ; 
 int FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static inline int FUNC4(unsigned long base)
{
	unsigned int count = 0;
	unsigned int a = FUNC0(); /* do we run under spinlock? */

	while (!(FUNC1(base + 0xe) & 0x1) && count++ < 100)
		if (a)
			FUNC2(1);
		else
			FUNC3(1);

	return !(FUNC1(base + 0xe) & 0x1);
}