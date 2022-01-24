#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  dsr; int /*<<< orphan*/  rng; } ;
struct TYPE_12__ {TYPE_4__* state; TYPE_2__ icount; TYPE_1__* ops; } ;
struct sa1100_port {unsigned int old_status; TYPE_5__ port; } ;
struct TYPE_10__ {int /*<<< orphan*/  delta_msr_wait; } ;
struct TYPE_11__ {TYPE_3__ port; } ;
struct TYPE_8__ {unsigned int (* get_mctrl ) (TYPE_5__*) ;} ;

/* Variables and functions */
 unsigned int TIOCM_CAR ; 
 unsigned int TIOCM_CTS ; 
 unsigned int TIOCM_DSR ; 
 unsigned int TIOCM_RI ; 
 unsigned int FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct sa1100_port *sport)
{
	unsigned int status, changed;

	status = sport->port.ops->get_mctrl(&sport->port);
	changed = status ^ sport->old_status;

	if (changed == 0)
		return;

	sport->old_status = status;

	if (changed & TIOCM_RI)
		sport->port.icount.rng++;
	if (changed & TIOCM_DSR)
		sport->port.icount.dsr++;
	if (changed & TIOCM_CAR)
		FUNC2(&sport->port, status & TIOCM_CAR);
	if (changed & TIOCM_CTS)
		FUNC1(&sport->port, status & TIOCM_CTS);

	FUNC3(&sport->port.state->port.delta_msr_wait);
}