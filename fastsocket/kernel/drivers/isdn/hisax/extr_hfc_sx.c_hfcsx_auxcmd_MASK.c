#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int int_m1; int sctrl; int nt_mode; int trm; int sctrl_r; int conn; int ctmt; scalar_t__ bswapped; scalar_t__ nt_timer; } ;
struct TYPE_16__ {TYPE_6__ hfcsx; } ;
struct TYPE_11__ {int ph_state; } ;
struct TYPE_12__ {TYPE_2__ hfcsx; } ;
struct IsdnCardState {int chanlimit; int logecho; int /*<<< orphan*/  lock; TYPE_7__ hw; TYPE_5__* stlist; TYPE_3__ dc; } ;
struct TYPE_10__ {scalar_t__ num; } ;
struct TYPE_17__ {int arg; TYPE_1__ parm; } ;
typedef  TYPE_8__ isdn_ctrl ;
struct TYPE_13__ {int /*<<< orphan*/  l2l1; } ;
struct TYPE_14__ {TYPE_4__ l2; } ;

/* Variables and functions */
 int EINVAL ; 
 int HFCSX_ACTIVATE ; 
 int /*<<< orphan*/  HFCSX_CONNECT ; 
 int /*<<< orphan*/  HFCSX_CTMT ; 
 int HFCSX_DO_ACTION ; 
 int HFCSX_INTS_B1REC ; 
 int HFCSX_INTS_B1TRANS ; 
 int HFCSX_INTS_B2REC ; 
 int HFCSX_INTS_B2TRANS ; 
 int /*<<< orphan*/  HFCSX_INT_M1 ; 
 int HFCSX_LOAD_STATE ; 
 int /*<<< orphan*/  HFCSX_SCTRL ; 
 int /*<<< orphan*/  HFCSX_SCTRL_R ; 
 int /*<<< orphan*/  HFCSX_STATES ; 
 int /*<<< orphan*/  HFCSX_TRM ; 
 int SCTRL_B2_ENA ; 
 int SCTRL_MODE_NT ; 
 int /*<<< orphan*/  FUNC0 (struct IsdnCardState*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  dch_nt_l2l1 ; 
 int /*<<< orphan*/  FUNC1 (struct IsdnCardState*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int
FUNC5(struct IsdnCardState *cs, isdn_ctrl * ic)
{
	unsigned long flags;
	int i = *(unsigned int *) ic->parm.num;

	if ((ic->arg == 98) &&
	    (!(cs->hw.hfcsx.int_m1 & (HFCSX_INTS_B2TRANS + HFCSX_INTS_B2REC + HFCSX_INTS_B1TRANS + HFCSX_INTS_B1REC)))) {
	    	FUNC2(&cs->lock, flags);
		FUNC0(cs, HFCSX_STATES, HFCSX_LOAD_STATE | 0);	/* HFC ST G0 */
		FUNC4(10);
		cs->hw.hfcsx.sctrl |= SCTRL_MODE_NT;
		FUNC0(cs, HFCSX_SCTRL, cs->hw.hfcsx.sctrl);	/* set NT-mode */
		FUNC4(10);
		FUNC0(cs, HFCSX_STATES, HFCSX_LOAD_STATE | 1);	/* HFC ST G1 */
		FUNC4(10);
		FUNC0(cs, HFCSX_STATES, 1 | HFCSX_ACTIVATE | HFCSX_DO_ACTION);
		cs->dc.hfcsx.ph_state = 1;
		cs->hw.hfcsx.nt_mode = 1;
		cs->hw.hfcsx.nt_timer = 0;
		FUNC3(&cs->lock, flags);
		cs->stlist->l2.l2l1 = dch_nt_l2l1;
		FUNC1(cs, "NT mode activated");
		return (0);
	}
	if ((cs->chanlimit > 1) || (cs->hw.hfcsx.bswapped) ||
	    (cs->hw.hfcsx.nt_mode) || (ic->arg != 12))
		return (-EINVAL);

	if (i) {
		cs->logecho = 1;
		cs->hw.hfcsx.trm |= 0x20;	/* enable echo chan */
		cs->hw.hfcsx.int_m1 |= HFCSX_INTS_B2REC;
		/* reset Channel !!!!! */
	} else {
		cs->logecho = 0;
		cs->hw.hfcsx.trm &= ~0x20;	/* disable echo chan */
		cs->hw.hfcsx.int_m1 &= ~HFCSX_INTS_B2REC;
	}
	cs->hw.hfcsx.sctrl_r &= ~SCTRL_B2_ENA;
	cs->hw.hfcsx.sctrl &= ~SCTRL_B2_ENA;
	cs->hw.hfcsx.conn |= 0x10;	/* B2-IOM -> B2-ST */
	cs->hw.hfcsx.ctmt &= ~2;
	FUNC2(&cs->lock, flags);
	FUNC0(cs, HFCSX_CTMT, cs->hw.hfcsx.ctmt);
	FUNC0(cs, HFCSX_SCTRL_R, cs->hw.hfcsx.sctrl_r);
	FUNC0(cs, HFCSX_SCTRL, cs->hw.hfcsx.sctrl);
	FUNC0(cs, HFCSX_CONNECT, cs->hw.hfcsx.conn);
	FUNC0(cs, HFCSX_TRM, cs->hw.hfcsx.trm);
	FUNC0(cs, HFCSX_INT_M1, cs->hw.hfcsx.int_m1);
	FUNC3(&cs->lock, flags);
	return (0);
}