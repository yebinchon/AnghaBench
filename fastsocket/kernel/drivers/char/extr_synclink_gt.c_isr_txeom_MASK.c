#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_3__* tty; } ;
struct TYPE_6__ {scalar_t__ mode; } ;
struct TYPE_5__ {int /*<<< orphan*/  txok; int /*<<< orphan*/  txunder; } ;
struct slgt_info {int tx_active; int drop_rts_on_tx_done; int /*<<< orphan*/  pending_bh; TYPE_4__ port; scalar_t__ netcount; int /*<<< orphan*/  signals; TYPE_2__ params; int /*<<< orphan*/  tx_timer; scalar_t__ tx_count; TYPE_1__ icount; int /*<<< orphan*/  device_name; } ;
struct TYPE_7__ {scalar_t__ hw_stopped; scalar_t__ stopped; } ;

/* Variables and functions */
 int /*<<< orphan*/  BH_TRANSMIT ; 
 unsigned short BIT2 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ IRQ_TXDATA ; 
 unsigned short IRQ_TXIDLE ; 
 unsigned short IRQ_TXUNDER ; 
 scalar_t__ MGSL_MODE_ASYNC ; 
 int /*<<< orphan*/  SerialSignal_RTS ; 
 int /*<<< orphan*/  TCR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct slgt_info*) ; 
 unsigned short FUNC3 (struct slgt_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct slgt_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct slgt_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct slgt_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct slgt_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct slgt_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct slgt_info*,int /*<<< orphan*/ ,unsigned short) ; 

__attribute__((used)) static void FUNC10(struct slgt_info *info, unsigned short status)
{
	FUNC0(("%s txeom status=%04x\n", info->device_name, status));

	FUNC6(info, IRQ_TXDATA + IRQ_TXIDLE + IRQ_TXUNDER);
	FUNC7(info);
	FUNC4(info);
	if (status & IRQ_TXUNDER) {
		unsigned short val = FUNC3(info, TCR);
		FUNC9(info, TCR, (unsigned short)(val | BIT2)); /* set reset bit */
		FUNC9(info, TCR, val); /* clear reset bit */
	}

	if (info->tx_active) {
		if (info->params.mode != MGSL_MODE_ASYNC) {
			if (status & IRQ_TXUNDER)
				info->icount.txunder++;
			else if (status & IRQ_TXIDLE)
				info->icount.txok++;
		}

		info->tx_active = false;
		info->tx_count = 0;

		FUNC1(&info->tx_timer);

		if (info->params.mode != MGSL_MODE_ASYNC && info->drop_rts_on_tx_done) {
			info->signals &= ~SerialSignal_RTS;
			info->drop_rts_on_tx_done = false;
			FUNC5(info);
		}

#if SYNCLINK_GENERIC_HDLC
		if (info->netcount)
			hdlcdev_tx_done(info);
		else
#endif
		{
			if (info->port.tty && (info->port.tty->stopped || info->port.tty->hw_stopped)) {
				FUNC8(info);
				return;
			}
			info->pending_bh |= BH_TRANSMIT;
		}
	}
}