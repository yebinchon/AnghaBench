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
struct TYPE_2__ {int /*<<< orphan*/ * data; } ;
struct netup_ci_state {TYPE_1__ ca; } ;
struct cx23885_tsport {scalar_t__ port_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct netup_ci_state*) ; 

void FUNC2(struct cx23885_tsport *port)
{
	struct netup_ci_state *state;

	if (NULL == port)
		return;

	state = (struct netup_ci_state *)port->port_priv;
	if (NULL == state)
		return;

	if (NULL == state->ca.data)
		return;

	FUNC0(&state->ca);
	FUNC1(state);
}