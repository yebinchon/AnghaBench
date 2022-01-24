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
typedef  int /*<<< orphan*/  args ;

/* Variables and functions */
 unsigned long LHREQ_INITIALIZE ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 unsigned long FUNC1 () ; 
 unsigned long guest_base ; 
 unsigned long guest_limit ; 
 int /*<<< orphan*/  lguest_fd ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned long,unsigned long,unsigned long) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,unsigned long*,int) ; 

__attribute__((used)) static void FUNC5(unsigned long start)
{
	unsigned long args[] = { LHREQ_INITIALIZE,
				 (unsigned long)guest_base,
				 guest_limit / FUNC1(), start };
	FUNC3("Guest: %p - %p (%#lx)\n",
		guest_base, guest_base + guest_limit, guest_limit);
	lguest_fd = FUNC2("/dev/lguest", O_RDWR);
	if (FUNC4(lguest_fd, args, sizeof(args)) < 0)
		FUNC0(1, "Writing to /dev/lguest");
}