#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {scalar_t__ hw_stopped; scalar_t__ stopped; } ;
struct TYPE_8__ {scalar_t__ mode; } ;
struct TYPE_9__ {int tx_active; int tx_aborting; int drop_rts_on_tx_done; int serial_signals; int /*<<< orphan*/  pending_bh; scalar_t__ netcount; int /*<<< orphan*/  tx_timer; scalar_t__ tx_get; scalar_t__ tx_put; scalar_t__ tx_count; TYPE_1__ params; } ;
typedef  TYPE_2__ MGSLPC_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  BH_TRANSMIT ; 
 scalar_t__ MGSL_MODE_ASYNC ; 
 int SerialSignal_RTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC5(MGSLPC_INFO *info, struct tty_struct *tty)
{
	if (!info->tx_active)
		return;

	info->tx_active = false;
	info->tx_aborting = false;

	if (info->params.mode == MGSL_MODE_ASYNC)
		return;

	info->tx_count = info->tx_put = info->tx_get = 0;
	FUNC0(&info->tx_timer);

	if (info->drop_rts_on_tx_done) {
		FUNC1(info);
		if (info->serial_signals & SerialSignal_RTS) {
			info->serial_signals &= ~SerialSignal_RTS;
			FUNC3(info);
		}
		info->drop_rts_on_tx_done = false;
	}

#if SYNCLINK_GENERIC_HDLC
	if (info->netcount)
		hdlcdev_tx_done(info);
	else
#endif
	{
		if (tty->stopped || tty->hw_stopped) {
			FUNC4(info);
			return;
		}
		info->pending_bh |= BH_TRANSMIT;
	}
}