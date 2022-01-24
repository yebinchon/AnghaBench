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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  bus_error_jmp ; 
 int catch_memory_errors ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int
FUNC4(unsigned long adrs, void *buf, int size)
{
	volatile int n;
	char *p, *q;

	n = 0;
	if (FUNC2(bus_error_jmp) == 0) {
		catch_memory_errors = 1;
		FUNC3();
		p = (char *) adrs;
		q = (char *) buf;
		switch (size) {
		case 2:
			*(u16 *)p = *(u16 *)q;
			break;
		case 4:
			*(u32 *)p = *(u32 *)q;
			break;
		case 8:
			*(u64 *)p = *(u64 *)q;
			break;
		default:
			for ( ; n < size; ++n) {
				*p++ = *q++;
				FUNC3();
			}
		}
		FUNC3();
		/* wait a little while to see if we get a machine check */
		FUNC0(200);
		n = size;
	} else {
		FUNC1("*** Error writing address %x\n", adrs + n);
	}
	catch_memory_errors = 0;
	return n;
}