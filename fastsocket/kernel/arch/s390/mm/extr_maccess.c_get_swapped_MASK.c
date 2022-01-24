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
struct _lowcore {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 () ; 

__attribute__((used)) static unsigned long FUNC1(unsigned long addr)
{
	unsigned long prefix = FUNC0();

	if (addr < sizeof(struct _lowcore))
		return addr + prefix;
	if (addr >= prefix && addr < prefix + sizeof(struct _lowcore))
		return addr - prefix;
	return addr;
}