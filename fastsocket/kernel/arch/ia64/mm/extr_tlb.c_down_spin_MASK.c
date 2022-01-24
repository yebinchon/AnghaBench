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
struct spinaphore {unsigned long serve; int /*<<< orphan*/  ticket; } ;

/* Variables and functions */
 int /*<<< orphan*/  acq ; 
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned long FUNC1 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 

__attribute__((used)) static inline void FUNC4(struct spinaphore *ss)
{
	unsigned long t = FUNC1(1, &ss->ticket, acq), serve;

	if (FUNC3(t, ss->serve))
		return;

	FUNC2();

	for (;;) {
		asm volatile ("ld4.c.nc %0=[%1]" : "=r"(serve) : "r"(&ss->serve) : "memory");
		if (FUNC3(t, serve))
			return;
		FUNC0();
	}
}