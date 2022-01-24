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
typedef  int u32 ;

/* Variables and functions */
 int EFAULT ; 
 int FUNC0 (int) ; 
 int PIO_VA_BASE ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static inline int FUNC3(u32 reg, int gpio)
{
	u32 bit, val;
	int ret = -EFAULT;

	if (gpio < 0)
		goto out;

	bit = FUNC0(gpio);
	if (bit) {
		val = FUNC1(PIO_VA_BASE + reg);
		val |= bit;
		FUNC2(val, PIO_VA_BASE + reg);
		ret = 0;
	}
out:
	return ret;
}