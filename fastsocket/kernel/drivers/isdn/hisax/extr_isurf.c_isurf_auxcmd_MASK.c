#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
struct IsdnCardState {int /*<<< orphan*/  lock; int /*<<< orphan*/  (* writeisac ) (struct IsdnCardState*,int /*<<< orphan*/ ,int) ;} ;
struct TYPE_4__ {scalar_t__ command; int arg; } ;
typedef  TYPE_1__ isdn_ctrl ;

/* Variables and functions */
 int /*<<< orphan*/  ISAC_CMDR ; 
 int /*<<< orphan*/  ISAC_MASK ; 
 scalar_t__ ISDN_CMD_IOCTL ; 
 int ISURF_ARCOFI_RESET ; 
 int ISURF_ISAC_RESET ; 
 int ISURF_ISAR_EA ; 
 int /*<<< orphan*/  FUNC0 (struct IsdnCardState*) ; 
 int FUNC1 (struct IsdnCardState*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct IsdnCardState*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct IsdnCardState*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct IsdnCardState*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC7(struct IsdnCardState *cs, isdn_ctrl *ic) {
	int ret;
	u_long flags;

	if ((ic->command == ISDN_CMD_IOCTL) && (ic->arg == 9)) {
		ret = FUNC1(cs, ic);
		FUNC3(&cs->lock, flags);
		if (!ret) {
			FUNC2(cs, ISURF_ISAR_EA | ISURF_ISAC_RESET |
				ISURF_ARCOFI_RESET);
			FUNC0(cs);
			cs->writeisac(cs, ISAC_MASK, 0);
			cs->writeisac(cs, ISAC_CMDR, 0x41);
		}
		FUNC4(&cs->lock, flags);
		return(ret);
	}
	return(FUNC1(cs, ic));
}