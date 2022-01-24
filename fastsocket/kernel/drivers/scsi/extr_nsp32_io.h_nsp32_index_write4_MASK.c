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
 scalar_t__ DATA_REG_HI ; 
 scalar_t__ DATA_REG_LOW ; 
 scalar_t__ INDEX_REG ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,scalar_t__) ; 

__attribute__((used)) static inline void FUNC2(unsigned int  base,
				      unsigned int  reg,
				      unsigned long val)
{
	unsigned long h,l;

	h = (val & 0xffff0000) >> 16;
	l = (val & 0x0000ffff) >>  0;

	FUNC0(reg, base + INDEX_REG   );
	FUNC1(l,   base + DATA_REG_LOW);
	FUNC1(h,   base + DATA_REG_HI );
}