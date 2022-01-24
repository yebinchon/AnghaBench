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
 int I8042_BUFFER_SIZE ; 
 unsigned char I8042_STR_AUXDATA ; 
 unsigned char I8042_STR_OBF ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned char,char*) ; 
 int /*<<< orphan*/  i8042_lock ; 
 unsigned char FUNC1 () ; 
 unsigned char FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(void)
{
	unsigned long flags;
	unsigned char data, str;
	int i = 0;

	FUNC3(&i8042_lock, flags);

	while (((str = FUNC2()) & I8042_STR_OBF) && (i < I8042_BUFFER_SIZE)) {
		FUNC5(50);
		data = FUNC1();
		i++;
		FUNC0("%02x <- i8042 (flush, %s)", data,
			str & I8042_STR_AUXDATA ? "aux" : "kbd");
	}

	FUNC4(&i8042_lock, flags);

	return i;
}