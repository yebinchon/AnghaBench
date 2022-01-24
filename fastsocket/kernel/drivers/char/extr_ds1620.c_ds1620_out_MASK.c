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
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(int cmd, int bits, int value)
{
	unsigned long flags;

	FUNC5(&flags);
	FUNC3(1);
	FUNC4(0);
	FUNC2();

	FUNC7(1);

	FUNC0(8, cmd);
	if (bits)
		FUNC0(bits, value);

	FUNC7(1);

	FUNC2();
	FUNC6(&flags);

	FUNC1(20);
}