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
struct TYPE_5__ {scalar_t__ mode; } ;
struct slgt_info {int /*<<< orphan*/  lock; TYPE_4__ port; scalar_t__ netcount; scalar_t__ dsr_chkcount; scalar_t__ ri_chkcount; scalar_t__ cts_chkcount; scalar_t__ dcd_chkcount; TYPE_1__ params; } ;
struct TYPE_7__ {TYPE_2__* termios; } ;
struct TYPE_6__ {int c_cflag; } ;

/* Variables and functions */
 int CREAD ; 
 int IRQ_CTS ; 
 int IRQ_DCD ; 
 int IRQ_DSR ; 
 int IRQ_RI ; 
 scalar_t__ MGSL_MODE_ASYNC ; 
 int /*<<< orphan*/  FUNC0 (struct slgt_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct slgt_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct slgt_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct slgt_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct slgt_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct slgt_info*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct slgt_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct slgt_info*) ; 

__attribute__((used)) static void FUNC10(struct slgt_info *info)
{
	unsigned long flags;

	FUNC6(&info->lock,flags);

	FUNC3(info);
	FUNC9(info);

	if (info->params.mode != MGSL_MODE_ASYNC ||
	    info->netcount)
		FUNC8(info);
	else
		FUNC0(info);

	FUNC4(info);

	info->dcd_chkcount = 0;
	info->cts_chkcount = 0;
	info->ri_chkcount = 0;
	info->dsr_chkcount = 0;

	FUNC5(info, IRQ_DCD | IRQ_CTS | IRQ_DSR | IRQ_RI);
	FUNC1(info);

	if (info->netcount ||
	    (info->port.tty && info->port.tty->termios->c_cflag & CREAD))
		FUNC2(info);

	FUNC7(&info->lock,flags);
}