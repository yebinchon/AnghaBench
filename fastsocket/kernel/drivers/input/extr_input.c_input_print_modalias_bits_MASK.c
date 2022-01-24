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
 unsigned long FUNC0 (int) ; 
 size_t FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC4(char *buf, int size,
				     char name, unsigned long *bm,
				     unsigned int min_bit, unsigned int max_bit)
{
	int len = 0, i;

	len += FUNC3(buf, FUNC2(size, 0), "%c", name);
	for (i = min_bit; i < max_bit; i++)
		if (bm[FUNC1(i)] & FUNC0(i))
			len += FUNC3(buf + len, FUNC2(size - len, 0), "%X,", i);
	return len;
}