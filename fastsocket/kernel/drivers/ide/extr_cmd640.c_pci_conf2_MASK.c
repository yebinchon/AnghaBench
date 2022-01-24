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
 int /*<<< orphan*/  cmd640_lock ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(void)
{
	unsigned long flags;

	FUNC2(&cmd640_lock, flags);
	FUNC1(0x00, 0xCFB);
	FUNC1(0x00, 0xCF8);
	FUNC1(0x00, 0xCFA);
	if (FUNC0(0xCF8) == 0x00 && FUNC0(0xCF8) == 0x00) {
		FUNC3(&cmd640_lock, flags);
		return 1;
	}
	FUNC3(&cmd640_lock, flags);
	return 0;
}