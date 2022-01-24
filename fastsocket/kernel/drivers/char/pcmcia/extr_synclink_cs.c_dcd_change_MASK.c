#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {int dummy; } ;
struct TYPE_10__ {int flags; int /*<<< orphan*/  open_wait; } ;
struct TYPE_9__ {int /*<<< orphan*/  dcd_down; int /*<<< orphan*/  dcd_up; } ;
struct TYPE_8__ {int /*<<< orphan*/  dcd; } ;
struct TYPE_11__ {int serial_signals; int /*<<< orphan*/  pending_bh; TYPE_3__ port; int /*<<< orphan*/  device_name; int /*<<< orphan*/  event_wait_q; int /*<<< orphan*/  status_event_wait_q; int /*<<< orphan*/  netdev; scalar_t__ netcount; TYPE_2__ input_signal_events; TYPE_1__ icount; int /*<<< orphan*/  dcd_chkcount; } ;
typedef  TYPE_4__ MGSLPC_INFO ;

/* Variables and functions */
 int ASYNC_CHECK_CD ; 
 int /*<<< orphan*/  BH_STATUS ; 
 int /*<<< orphan*/  CHB ; 
 scalar_t__ DEBUG_LEVEL_ISR ; 
 scalar_t__ IO_PIN_SHUTDOWN_LIMIT ; 
 int /*<<< orphan*/  IRQ_DCD ; 
 int SerialSignal_DCD ; 
 scalar_t__ debug_level ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(MGSLPC_INFO *info, struct tty_struct *tty)
{
	FUNC0(info);
	if ((info->dcd_chkcount)++ >= IO_PIN_SHUTDOWN_LIMIT)
		FUNC1(info, CHB, IRQ_DCD);
	info->icount.dcd++;
	if (info->serial_signals & SerialSignal_DCD) {
		info->input_signal_events.dcd_up++;
	}
	else
		info->input_signal_events.dcd_down++;
#if SYNCLINK_GENERIC_HDLC
	if (info->netcount) {
		if (info->serial_signals & SerialSignal_DCD)
			netif_carrier_on(info->netdev);
		else
			netif_carrier_off(info->netdev);
	}
#endif
	FUNC6(&info->status_event_wait_q);
	FUNC6(&info->event_wait_q);

	if (info->port.flags & ASYNC_CHECK_CD) {
		if (debug_level >= DEBUG_LEVEL_ISR)
			FUNC4("%s CD now %s...", info->device_name,
			       (info->serial_signals & SerialSignal_DCD) ? "on" : "off");
		if (info->serial_signals & SerialSignal_DCD)
			FUNC6(&info->port.open_wait);
		else {
			if (debug_level >= DEBUG_LEVEL_ISR)
				FUNC4("doing serial hangup...");
			if (tty)
				FUNC5(tty);
		}
	}
	info->pending_bh |= BH_STATUS;
}