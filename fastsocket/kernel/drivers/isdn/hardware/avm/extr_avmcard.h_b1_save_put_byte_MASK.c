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
 int /*<<< orphan*/  B1_WRITE ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ,unsigned char) ; 
 int jiffies ; 
 scalar_t__ FUNC2 (int,unsigned long) ; 

__attribute__((used)) static inline int FUNC3(unsigned int base, unsigned char val)
{
	unsigned long stop = jiffies + 2 * HZ;
	while (!FUNC0(base) && FUNC2(jiffies,stop));
	if (!FUNC0(base)) return -1;
	FUNC1(base, B1_WRITE, val);
	return 0;
}