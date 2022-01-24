#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int ph_state; } ;
struct TYPE_4__ {TYPE_1__ icc; } ;
struct IsdnCardState {int (* readisac ) (struct IsdnCardState*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* writeisac ) (struct IsdnCardState*,int /*<<< orphan*/ ,int) ;TYPE_2__ dc; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_L1STATECHANGE ; 
 int /*<<< orphan*/  ICC_ADF2 ; 
 int /*<<< orphan*/  ICC_CIR0 ; 
 int /*<<< orphan*/  ICC_EXIR ; 
 int /*<<< orphan*/  ICC_ISTA ; 
 int /*<<< orphan*/  ICC_MASK ; 
 int /*<<< orphan*/  ICC_MODE ; 
 int /*<<< orphan*/  ICC_STAR ; 
 int /*<<< orphan*/  FUNC0 (struct IsdnCardState*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct IsdnCardState*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct IsdnCardState*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct IsdnCardState*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct IsdnCardState*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct IsdnCardState*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct IsdnCardState*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct IsdnCardState*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct IsdnCardState*,int /*<<< orphan*/ ,int) ; 

void
FUNC9(struct IsdnCardState *cs)
{
	int val, eval;

	val = cs->readisac(cs, ICC_STAR);
	FUNC0(cs, "ICC STAR %x", val);
	val = cs->readisac(cs, ICC_MODE);
	FUNC0(cs, "ICC MODE %x", val);
	val = cs->readisac(cs, ICC_ADF2);
	FUNC0(cs, "ICC ADF2 %x", val);
	val = cs->readisac(cs, ICC_ISTA);
	FUNC0(cs, "ICC ISTA %x", val);
	if (val & 0x01) {
		eval = cs->readisac(cs, ICC_EXIR);
		FUNC0(cs, "ICC EXIR %x", eval);
	}
	val = cs->readisac(cs, ICC_CIR0);
	FUNC0(cs, "ICC CIR0 %x", val);
	cs->dc.icc.ph_state = (val >> 2) & 0xf;
	FUNC1(cs, D_L1STATECHANGE);
	/* Disable all IRQ */
	cs->writeisac(cs, ICC_MASK, 0xFF);
}