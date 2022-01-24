#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct fc_rport {int dummy; } ;
struct TYPE_6__ {TYPE_1__* vha; struct fc_rport* drport; struct fc_rport* rport; } ;
typedef  TYPE_3__ fc_port_t ;
struct TYPE_5__ {int /*<<< orphan*/  host_lock; } ;
struct TYPE_4__ {TYPE_2__* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fc_rport*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void
FUNC3(void *data)
{
	fc_port_t *fcport = data;
	struct fc_rport *rport;
	unsigned long flags;

	FUNC1(fcport->vha->host->host_lock, flags);
	rport = fcport->drport ? fcport->drport: fcport->rport;
	fcport->drport = NULL;
	FUNC2(fcport->vha->host->host_lock, flags);
	if (rport)
		FUNC0(rport);
}