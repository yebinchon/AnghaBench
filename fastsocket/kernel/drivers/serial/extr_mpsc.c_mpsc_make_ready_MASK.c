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
struct TYPE_2__ {int /*<<< orphan*/  line; } ;
struct mpsc_port_info {int ready; TYPE_1__ port; } ;

/* Variables and functions */
 int FUNC0 (struct mpsc_port_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct mpsc_port_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct mpsc_port_info*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct mpsc_port_info *pi)
{
	int rc;

	FUNC3("mpsc_make_ready[%d]: Making cltr ready\n", pi->port.line);

	if (!pi->ready) {
		FUNC1(pi);
		if ((rc = FUNC0(pi)))
			return rc;
		FUNC2(pi);
		pi->ready = 1;
	}

	return 0;
}