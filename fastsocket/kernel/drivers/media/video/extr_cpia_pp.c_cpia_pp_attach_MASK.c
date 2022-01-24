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
struct parport {int number; TYPE_1__* probe_info; } ;
struct TYPE_2__ {int /*<<< orphan*/ * cmdset; int /*<<< orphan*/  class; } ;

/* Variables and functions */
 int /*<<< orphan*/  PARPORT_CLASS_MEDIA ; 
 unsigned int PARPORT_MAX ; 
#define  PPCPIA_PARPORT_AUTO 129 
#define  PPCPIA_PARPORT_UNSPEC 128 
 int /*<<< orphan*/  FUNC0 (struct parport*) ; 
 int* parport_nr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static void FUNC2 (struct parport *port)
{
	unsigned int i;

	switch (parport_nr[0])
	{
	case PPCPIA_PARPORT_UNSPEC:
	case PPCPIA_PARPORT_AUTO:
		if (port->probe_info[0].class != PARPORT_CLASS_MEDIA ||
		    port->probe_info[0].cmdset == NULL ||
		    FUNC1(port->probe_info[0].cmdset, "CPIA_1", 6) != 0)
			return;

		FUNC0(port);

		break;

	default:
		for (i = 0; i < PARPORT_MAX; ++i) {
			if (port->number == parport_nr[i]) {
				FUNC0(port);
				break;
			}
		}
		break;
	}
}