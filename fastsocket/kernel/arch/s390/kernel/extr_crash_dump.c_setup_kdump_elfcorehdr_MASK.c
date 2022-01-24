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
 int EINVAL ; 
 int /*<<< orphan*/  OLDMEM_BASE ; 
 unsigned long long elfcorehdr_addr ; 
 size_t elfcorehdr_size ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char**,size_t*) ; 

__attribute__((used)) static int FUNC2(void)
{
	size_t elfcorebuf_sz;
	char *elfcorebuf;

	if (!OLDMEM_BASE || FUNC0())
		return -EINVAL;
	FUNC1(&elfcorebuf, &elfcorebuf_sz);
	elfcorehdr_addr = (unsigned long long) elfcorebuf;
	elfcorehdr_size = elfcorebuf_sz;
	return 0;
}