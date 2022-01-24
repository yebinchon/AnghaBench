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
typedef  scalar_t__ addr_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 scalar_t__ FUNC1 (scalar_t__,size_t) ; 
 int /*<<< orphan*/  ENOSPC ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void *FUNC3(addr_t *start, addr_t end, size_t len,
			      int align, int check_4k)
{
	addr_t addr;

	addr = FUNC0(*start, align);
	if (check_4k && FUNC1(addr, len)) {
		addr = FUNC0(addr, 4096);
		addr = FUNC0(addr, align);
	}
	if (addr + len > end)
		return FUNC2(-ENOSPC);
	*start = addr + len;
	return (void *) addr;
}