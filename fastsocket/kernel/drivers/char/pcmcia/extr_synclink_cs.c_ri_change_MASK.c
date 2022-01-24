#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  ri_down; int /*<<< orphan*/  ri_up; } ;
struct TYPE_7__ {int /*<<< orphan*/  rng; } ;
struct TYPE_9__ {int serial_signals; int /*<<< orphan*/  pending_bh; int /*<<< orphan*/  event_wait_q; int /*<<< orphan*/  status_event_wait_q; TYPE_2__ input_signal_events; TYPE_1__ icount; int /*<<< orphan*/  ri_chkcount; } ;
typedef  TYPE_3__ MGSLPC_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  BH_STATUS ; 
 scalar_t__ IO_PIN_SHUTDOWN_LIMIT ; 
 int /*<<< orphan*/  PVR_RI ; 
 int SerialSignal_RI ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(MGSLPC_INFO *info)
{
	FUNC0(info);
	if ((info->ri_chkcount)++ >= IO_PIN_SHUTDOWN_LIMIT)
		FUNC1(info, PVR_RI);
	info->icount.rng++;
	if (info->serial_signals & SerialSignal_RI)
		info->input_signal_events.ri_up++;
	else
		info->input_signal_events.ri_down++;
	FUNC2(&info->status_event_wait_q);
	FUNC2(&info->event_wait_q);
	info->pending_bh |= BH_STATUS;
}