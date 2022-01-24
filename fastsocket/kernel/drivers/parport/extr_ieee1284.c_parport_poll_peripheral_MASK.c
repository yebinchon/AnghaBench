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
struct parport {int dummy; } ;

/* Variables and functions */
 int EINTR ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC0 () ; 
 unsigned char FUNC1 (struct parport*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

int FUNC4(struct parport *port,
			    unsigned char mask,
			    unsigned char result,
			    int usec)
{
	/* Zero return code is success, >0 is timeout. */
	int count = usec / 5 + 2;
	int i;
	unsigned char status;
	for (i = 0; i < count; i++) {
		status = FUNC1 (port);
		if ((status & mask) == result)
			return 0;
		if (FUNC2 (current))
			return -EINTR;
		if (FUNC0())
			break;
		if (i >= 2)
			FUNC3 (5);
	}

	return 1;
}