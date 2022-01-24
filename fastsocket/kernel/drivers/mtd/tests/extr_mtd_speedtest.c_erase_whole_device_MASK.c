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
 scalar_t__* bbt ; 
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned int ebcnt ; 
 int FUNC1 (unsigned int) ; 

__attribute__((used)) static int FUNC2(void)
{
	int err;
	unsigned int i;

	for (i = 0; i < ebcnt; ++i) {
		if (bbt[i])
			continue;
		err = FUNC1(i);
		if (err)
			return err;
		FUNC0();
	}
	return 0;
}