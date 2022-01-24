#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct parport {TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* data_forward ) (struct parport*) ;} ;

/* Variables and functions */
 int PARPORT_CONTROL_AUTOFD ; 
 int PARPORT_CONTROL_INIT ; 
 int PARPORT_CONTROL_SELECT ; 
 int PARPORT_CONTROL_STROBE ; 
 int /*<<< orphan*/  PARPORT_STATUS_BUSY ; 
 int /*<<< orphan*/  FUNC0 (struct parport*,int,int) ; 
 scalar_t__ FUNC1 (struct parport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct parport*,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (struct parport*) ; 

size_t FUNC4 (struct parport *port,
					const void *buffer, size_t len,
					int flags)
{
	unsigned char *bp = (unsigned char *) buffer;
	size_t ret = 0;

	/* set EPP idle state (just to make sure) with strobe low */
	FUNC0 (port,
			      PARPORT_CONTROL_STROBE |
			      PARPORT_CONTROL_AUTOFD |
			      PARPORT_CONTROL_SELECT |
			      PARPORT_CONTROL_INIT,
			      PARPORT_CONTROL_STROBE |
			      PARPORT_CONTROL_INIT);
	port->ops->data_forward (port);
	for (; len > 0; len--, bp++) {
		/* Event 62: Write data and set autofd low */
		FUNC2 (port, *bp);
		FUNC0 (port, PARPORT_CONTROL_AUTOFD,
				      PARPORT_CONTROL_AUTOFD);

		/* Event 58: wait for busy (nWait) to go high */
		if (FUNC1 (port, PARPORT_STATUS_BUSY, 0, 10))
			break;

		/* Event 63: set nAutoFd (nDStrb) high */
		FUNC0 (port, PARPORT_CONTROL_AUTOFD, 0);

		/* Event 60: wait for busy (nWait) to go low */
		if (FUNC1 (port, PARPORT_STATUS_BUSY,
					     PARPORT_STATUS_BUSY, 5))
			break;

		ret++;
	}

	/* Event 61: set strobe (nWrite) high */
	FUNC0 (port, PARPORT_CONTROL_STROBE, 0);

	return ret;
}