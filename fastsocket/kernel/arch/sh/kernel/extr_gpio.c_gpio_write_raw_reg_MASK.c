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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC4(unsigned long reg,
			       unsigned long reg_width,
			       unsigned long data)
{
	switch (reg_width) {
	case 8:
		FUNC1(data, reg);
		return;
	case 16:
		FUNC3(data, reg);
		return;
	case 32:
		FUNC2(data, reg);
		return;
	}

	FUNC0();
}