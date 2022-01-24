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
struct fc_rport_priv {scalar_t__ event; int /*<<< orphan*/  event_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fc_rport_priv*,char*) ; 
 scalar_t__ RPORT_EV_NONE ; 
 scalar_t__ RPORT_EV_READY ; 
 int /*<<< orphan*/  RPORT_ST_READY ; 
 int /*<<< orphan*/  FUNC1 (struct fc_rport_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rport_event_queue ; 

__attribute__((used)) static void FUNC3(struct fc_rport_priv *rdata)
{
	FUNC1(rdata, RPORT_ST_READY);

	FUNC0(rdata, "Port is Ready\n");

	if (rdata->event == RPORT_EV_NONE)
		FUNC2(rport_event_queue, &rdata->event_work);
	rdata->event = RPORT_EV_READY;
}