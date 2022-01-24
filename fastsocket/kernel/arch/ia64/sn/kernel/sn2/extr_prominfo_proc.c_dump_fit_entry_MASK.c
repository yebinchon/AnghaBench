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
 int FUNC0 (unsigned long) ; 
 int FUNC1 (unsigned long) ; 
 unsigned int FUNC2 (unsigned long) ; 
 char* FUNC3 (unsigned int) ; 
 int FUNC4 (char*,char*,unsigned int,char*,int,int,unsigned long,unsigned int) ; 

__attribute__((used)) static int FUNC5(char *page, unsigned long *fentry)
{
	unsigned type;

	type = FUNC2(fentry[1]);
	return FUNC4(page, "%02x %-25s %x.%02x %016lx %u\n",
		       type,
		       FUNC3(type),
		       FUNC0(fentry[1]), FUNC1(fentry[1]),
		       fentry[0],
		       /* mult by sixteen to get size in bytes */
		       (unsigned)(fentry[1] & 0xffffff) * 16);
}