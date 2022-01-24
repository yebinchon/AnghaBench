#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {int hw_stopped; } ;
struct TYPE_12__ {int flags; } ;
struct TYPE_11__ {int /*<<< orphan*/  cts_down; int /*<<< orphan*/  cts_up; } ;
struct TYPE_10__ {int /*<<< orphan*/  cts; } ;
struct TYPE_13__ {int serial_signals; int /*<<< orphan*/  pending_bh; TYPE_3__ port; int /*<<< orphan*/  event_wait_q; int /*<<< orphan*/  status_event_wait_q; TYPE_2__ input_signal_events; TYPE_1__ icount; int /*<<< orphan*/  cts_chkcount; } ;
typedef  TYPE_4__ MGSLPC_INFO ;

/* Variables and functions */
 int ASYNC_CTS_FLOW ; 
 int /*<<< orphan*/  BH_STATUS ; 
 int /*<<< orphan*/  BH_TRANSMIT ; 
 int /*<<< orphan*/  CHB ; 
 scalar_t__ DEBUG_LEVEL_ISR ; 
 scalar_t__ IO_PIN_SHUTDOWN_LIMIT ; 
 int /*<<< orphan*/  IRQ_CTS ; 
 int SerialSignal_CTS ; 
 scalar_t__ debug_level ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(MGSLPC_INFO *info, struct tty_struct *tty)
{
	FUNC0(info);
	if ((info->cts_chkcount)++ >= IO_PIN_SHUTDOWN_LIMIT)
		FUNC1(info, CHB, IRQ_CTS);
	info->icount.cts++;
	if (info->serial_signals & SerialSignal_CTS)
		info->input_signal_events.cts_up++;
	else
		info->input_signal_events.cts_down++;
	FUNC5(&info->status_event_wait_q);
	FUNC5(&info->event_wait_q);

	if (info->port.flags & ASYNC_CTS_FLOW) {
		if (tty->hw_stopped) {
			if (info->serial_signals & SerialSignal_CTS) {
				if (debug_level >= DEBUG_LEVEL_ISR)
					FUNC2("CTS tx start...");
				if (tty)
					tty->hw_stopped = 0;
				FUNC3(info, tty);
				info->pending_bh |= BH_TRANSMIT;
				return;
			}
		} else {
			if (!(info->serial_signals & SerialSignal_CTS)) {
				if (debug_level >= DEBUG_LEVEL_ISR)
					FUNC2("CTS tx stop...");
				if (tty)
					tty->hw_stopped = 1;
				FUNC4(info);
			}
		}
	}
	info->pending_bh |= BH_STATUS;
}