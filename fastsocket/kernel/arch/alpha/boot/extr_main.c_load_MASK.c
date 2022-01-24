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
 scalar_t__ BOOT_ADDR ; 
 int /*<<< orphan*/  ENV_BOOTED_FILE ; 
 long FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 long FUNC1 (long,unsigned long,void*,long) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

__attribute__((used)) static inline long FUNC3(long dev, unsigned long addr, unsigned long count)
{
	char bootfile[256];
	extern char _end;
	long result, boot_size = &_end - (char *) BOOT_ADDR;

	result = FUNC0(ENV_BOOTED_FILE, bootfile, 255);
	if (result < 0)
		return result;
	result &= 255;
	bootfile[result] = '\0';
	if (result)
		FUNC2("Boot file specification (%s) not implemented\n",
		       bootfile);
	return FUNC1(dev, count, (void *)addr, boot_size/512 + 1);
}