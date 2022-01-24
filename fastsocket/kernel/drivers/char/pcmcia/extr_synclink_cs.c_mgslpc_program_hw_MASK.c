#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {TYPE_2__* termios; } ;
struct TYPE_14__ {scalar_t__ mode; } ;
struct TYPE_16__ {int /*<<< orphan*/  lock; scalar_t__ netcount; scalar_t__ dsr_chkcount; scalar_t__ ri_chkcount; scalar_t__ cts_chkcount; scalar_t__ dcd_chkcount; TYPE_1__ params; scalar_t__ tx_get; scalar_t__ tx_put; scalar_t__ tx_count; } ;
struct TYPE_15__ {int c_cflag; } ;
typedef  TYPE_3__ MGSLPC_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  CHB ; 
 int CREAD ; 
 int IRQ_CTS ; 
 int IRQ_DCD ; 
 scalar_t__ MGSL_MODE_HDLC ; 
 scalar_t__ PVR_DSR ; 
 unsigned char PVR_RI ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,unsigned char) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC11(MGSLPC_INFO *info, struct tty_struct *tty)
{
	unsigned long flags;

	FUNC8(&info->lock,flags);

	FUNC6(info);
	FUNC10(info);
	info->tx_count = info->tx_put = info->tx_get = 0;

	if (info->params.mode == MGSL_MODE_HDLC || info->netcount)
		FUNC2(info);
	else
		FUNC0(info);

	FUNC7(info);

	info->dcd_chkcount = 0;
	info->cts_chkcount = 0;
	info->ri_chkcount = 0;
	info->dsr_chkcount = 0;

	FUNC3(info, CHB, IRQ_DCD | IRQ_CTS);
	FUNC4(info, (unsigned char) PVR_DSR | PVR_RI);
	FUNC1(info);

	if (info->netcount || (tty && (tty->termios->c_cflag & CREAD)))
		FUNC5(info);

	FUNC9(&info->lock,flags);
}