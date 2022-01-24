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
typedef  int u64 ;
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int*,int) ; 

__attribute__((used)) static int FUNC2(u32 *addr, u64 offset, int na)
{
	u64 a = FUNC1(addr, na);
	FUNC0(addr, 0, na * 4);
	a += offset;
	if (na > 1)
		addr[na - 2] = a >> 32;
	addr[na - 1] = a & 0xffffffffu;

	return 0;
}