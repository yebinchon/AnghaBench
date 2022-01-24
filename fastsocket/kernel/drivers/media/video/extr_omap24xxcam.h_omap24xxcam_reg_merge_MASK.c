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
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static inline u32 FUNC2(unsigned long base, u32 offset,
					    u32 val, u32 mask)
{
	u32 addr = base + offset;
	u32 new_val = (FUNC0(addr) & ~mask) | (val & mask);

	FUNC1(new_val, addr);
	return new_val;
}