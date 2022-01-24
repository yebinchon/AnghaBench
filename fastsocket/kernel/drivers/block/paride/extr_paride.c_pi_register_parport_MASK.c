#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct parport {scalar_t__ name; } ;
struct TYPE_3__ {char* parname; int /*<<< orphan*/  port; int /*<<< orphan*/  device; int /*<<< orphan*/  parq; int /*<<< orphan*/  pardev; } ;
typedef  TYPE_1__ PIA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct parport* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct parport*) ; 
 int /*<<< orphan*/  FUNC3 (struct parport*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  pi_wake_up ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC5(PIA * pi, int verbose)
{
	struct parport *port;

	port = FUNC1(pi->port);
	if (!port)
		return 0;

	pi->pardev = FUNC3(port,
					     pi->device, NULL,
					     pi_wake_up, NULL, 0, (void *) pi);
	FUNC2(port);
	if (!pi->pardev)
		return 0;

	FUNC0(&pi->parq);

	if (verbose)
		FUNC4("%s: 0x%x is %s\n", pi->device, pi->port, port->name);

	pi->parname = (char *) port->name;

	return 1;
}