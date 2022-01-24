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
struct etr_eacr {scalar_t__ e1; int /*<<< orphan*/  p1; scalar_t__ e0; int /*<<< orphan*/  p0; scalar_t__ sl; scalar_t__ es; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETR_EVENT_PORT0_CHANGE ; 
 int /*<<< orphan*/  ETR_EVENT_PORT1_CHANGE ; 
 int /*<<< orphan*/  ETR_EVENT_PORT_ALERT ; 
 int /*<<< orphan*/  ETR_EVENT_SWITCH_LOCAL ; 
 int /*<<< orphan*/  ETR_EVENT_SYNC_CHECK ; 
 int /*<<< orphan*/  ETR_EVENT_UPDATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  etr_events ; 
 int /*<<< orphan*/  etr_port0_online ; 
 scalar_t__ etr_port0_uptodate ; 
 int /*<<< orphan*/  etr_port1_online ; 
 scalar_t__ etr_port1_uptodate ; 
 int /*<<< orphan*/  etr_tolec ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct etr_eacr FUNC3(struct etr_eacr eacr)
{
	if (FUNC2(ETR_EVENT_SYNC_CHECK, &etr_events))
		eacr.es = 0;
	if (FUNC2(ETR_EVENT_SWITCH_LOCAL, &etr_events))
		eacr.es = eacr.sl = 0;
	if (FUNC2(ETR_EVENT_PORT_ALERT, &etr_events))
		etr_port0_uptodate = etr_port1_uptodate = 0;

	if (FUNC2(ETR_EVENT_PORT0_CHANGE, &etr_events)) {
		if (eacr.e0)
			/*
			 * Port change of an enabled port. We have to
			 * assume that this can have caused an stepping
			 * port switch.
			 */
			etr_tolec = FUNC1();
		eacr.p0 = etr_port0_online;
		if (!eacr.p0)
			eacr.e0 = 0;
		etr_port0_uptodate = 0;
	}
	if (FUNC2(ETR_EVENT_PORT1_CHANGE, &etr_events)) {
		if (eacr.e1)
			/*
			 * Port change of an enabled port. We have to
			 * assume that this can have caused an stepping
			 * port switch.
			 */
			etr_tolec = FUNC1();
		eacr.p1 = etr_port1_online;
		if (!eacr.p1)
			eacr.e1 = 0;
		etr_port1_uptodate = 0;
	}
	FUNC0(ETR_EVENT_UPDATE, &etr_events);
	return eacr;
}