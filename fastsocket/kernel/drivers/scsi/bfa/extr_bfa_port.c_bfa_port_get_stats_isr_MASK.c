#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  union bfa_port_stats_u {int dummy; } bfa_port_stats_u ;
struct timeval {scalar_t__ tv_sec; } ;
struct TYPE_5__ {int /*<<< orphan*/  kva; } ;
struct bfa_port_s {int /*<<< orphan*/  (* stats_cbfn ) (int /*<<< orphan*/ ,scalar_t__) ;int /*<<< orphan*/  stats_cbarg; scalar_t__ stats_reset_time; TYPE_3__* stats; TYPE_1__ stats_dma; int /*<<< orphan*/  stats_busy; scalar_t__ stats_status; } ;
typedef  scalar_t__ bfa_status_t ;
struct TYPE_6__ {scalar_t__ secs_reset; } ;
struct TYPE_7__ {TYPE_2__ fc; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_FALSE ; 
 scalar_t__ BFA_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_port_s*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (struct timeval*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC4(struct bfa_port_s *port, bfa_status_t status)
{
	port->stats_status = status;
	port->stats_busy = BFA_FALSE;

	if (status == BFA_STATUS_OK) {
		struct timeval tv;

		FUNC2(port->stats, port->stats_dma.kva,
		       sizeof(union bfa_port_stats_u));
		FUNC0(port, port->stats);

		FUNC1(&tv);
		port->stats->fc.secs_reset = tv.tv_sec - port->stats_reset_time;
	}

	if (port->stats_cbfn) {
		port->stats_cbfn(port->stats_cbarg, status);
		port->stats_cbfn = NULL;
	}
}