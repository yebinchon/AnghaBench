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
struct pps_event_time {int dummy; } ;
struct ptp_clock_event {int type; struct pps_event_time pps_times; } ;
struct ptp_clock {int /*<<< orphan*/  pps_source; int /*<<< orphan*/  tsev_wq; int /*<<< orphan*/  tsevq; } ;

/* Variables and functions */
#define  PTP_CLOCK_ALARM 131 
#define  PTP_CLOCK_EXTTS 130 
#define  PTP_CLOCK_PPS 129 
#define  PTP_CLOCK_PPSUSR 128 
 int /*<<< orphan*/  PTP_PPS_EVENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct ptp_clock_event*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct pps_event_time*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pps_event_time*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct ptp_clock *ptp, struct ptp_clock_event *event)
{
	struct pps_event_time evt;

	switch (event->type) {

	case PTP_CLOCK_ALARM:
		break;

	case PTP_CLOCK_EXTTS:
		FUNC0(&ptp->tsevq, event);
		FUNC3(&ptp->tsev_wq);
		break;

	case PTP_CLOCK_PPS:
		FUNC2(&evt);
		FUNC1(ptp->pps_source, &evt, PTP_PPS_EVENT, NULL);
		break;

	case PTP_CLOCK_PPSUSR:
		FUNC1(ptp->pps_source, &event->pps_times,
			  PTP_PPS_EVENT, NULL);
		break;
	}
}