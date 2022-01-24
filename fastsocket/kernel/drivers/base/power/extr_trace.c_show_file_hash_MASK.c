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
 int /*<<< orphan*/  FILEHASH ; 
 char __tracedata_end ; 
 char __tracedata_start ; 
 unsigned int FUNC0 (unsigned short,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,unsigned short) ; 

__attribute__((used)) static int FUNC2(unsigned int value)
{
	int match;
	char *tracedata;

	match = 0;
	for (tracedata = &__tracedata_start ; tracedata < &__tracedata_end ;
			tracedata += 2 + sizeof(unsigned long)) {
		unsigned short lineno = *(unsigned short *)tracedata;
		const char *file = *(const char **)(tracedata + 2);
		unsigned int hash = FUNC0(lineno, file, FILEHASH);
		if (hash != value)
			continue;
		FUNC1("  hash matches %s:%u\n", file, lineno);
		match++;
	}
	return match;
}