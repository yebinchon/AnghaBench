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
typedef  int /*<<< orphan*/  u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(unsigned long port, void *addr, u32 count)
{
	u16 *ptr = (u16 *)addr;
	while (count--) {
		FUNC1((void*)port, FUNC0(*ptr++));
		FUNC1((void*)port, FUNC0(*ptr++));
	}
}