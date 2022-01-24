#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_2__ {int /*<<< orphan*/  err_tx; } ;
struct isac_hw {int type; TYPE_1__ dch; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int IPAC_TYPE_ISACX ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  ISACX_CMDRD ; 
 int /*<<< orphan*/  ISACX_CMDRD_RMC ; 
 int ISACX_D_RFO ; 
 int ISACX_D_RME ; 
 int ISACX_D_RPF ; 
 int ISACX_D_XDU ; 
 int ISACX_D_XMR ; 
 int ISACX_D_XPR ; 
 int /*<<< orphan*/  ISACX_ISTAD ; 
 int ISACX__CIC ; 
 int ISACX__ICD ; 
 int /*<<< orphan*/  ISAC_EXIR ; 
 int FUNC0 (struct isac_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct isac_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct isac_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct isac_hw*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct isac_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct isac_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct isac_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct isac_hw*) ; 
 int /*<<< orphan*/  FUNC8 (struct isac_hw*) ; 
 int /*<<< orphan*/  FUNC9 (struct isac_hw*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC11 (int) ; 

irqreturn_t
FUNC12(struct isac_hw *isac, u8 val)
{
	if (FUNC11(!val))
		return IRQ_NONE;
	FUNC10("%s: ISAC interrupt %02x\n", isac->name, val);
	if (isac->type & IPAC_TYPE_ISACX) {
		if (val & ISACX__CIC)
			FUNC8(isac);
		if (val & ISACX__ICD) {
			val = FUNC0(isac, ISACX_ISTAD);
			FUNC10("%s: ISTAD %02x\n", isac->name, val);
			if (val & ISACX_D_XDU) {
				FUNC10("%s: ISAC XDU\n", isac->name);
#ifdef ERROR_STATISTIC
				isac->dch.err_tx++;
#endif
				FUNC5(isac);
			}
			if (val & ISACX_D_XMR) {
				FUNC10("%s: ISAC XMR\n", isac->name);
#ifdef ERROR_STATISTIC
				isac->dch.err_tx++;
#endif
				FUNC5(isac);
			}
			if (val & ISACX_D_XPR)
				FUNC7(isac);
			if (val & ISACX_D_RFO) {
				FUNC10("%s: ISAC RFO\n", isac->name);
				FUNC1(isac, ISACX_CMDRD, ISACX_CMDRD_RMC);
			}
			if (val & ISACX_D_RME)
				FUNC9(isac);
			if (val & ISACX_D_RPF)
				FUNC3(isac, 0x20);
		}
	} else {
		if (val & 0x80)	/* RME */
			FUNC6(isac);
		if (val & 0x40)	/* RPF */
			FUNC3(isac, 32);
		if (val & 0x10)	/* XPR */
			FUNC7(isac);
		if (val & 0x04)	/* CISQ */
			FUNC2(isac);
		if (val & 0x20)	/* RSC - never */
			FUNC10("%s: ISAC RSC interrupt\n", isac->name);
		if (val & 0x02)	/* SIN - never */
			FUNC10("%s: ISAC SIN interrupt\n", isac->name);
		if (val & 0x01) {	/* EXI */
			val = FUNC0(isac, ISAC_EXIR);
			FUNC10("%s: ISAC EXIR %02x\n", isac->name, val);
			if (val & 0x80)	/* XMR */
				FUNC10("%s: ISAC XMR\n", isac->name);
			if (val & 0x40) { /* XDU */
				FUNC10("%s: ISAC XDU\n", isac->name);
#ifdef ERROR_STATISTIC
				isac->dch.err_tx++;
#endif
				FUNC5(isac);
			}
			if (val & 0x04)	/* MOS */
				FUNC4(isac);
		}
	}
	return IRQ_HANDLED;
}