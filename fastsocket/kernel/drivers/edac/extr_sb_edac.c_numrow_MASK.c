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
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC2(u32 mtr)
{
	int rows = (FUNC0(mtr) + 12);

	if (rows < 13 || rows > 18) {
		FUNC1("Invalid number of rows: %d (should be between 14 and 17) raw value = %x (%04x)",
			rows, (unsigned int)FUNC0(mtr), mtr);
		return -EINVAL;
	}

	return 1 << rows;
}