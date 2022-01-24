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
typedef  int /*<<< orphan*/  u_long ;
struct TYPE_3__ {int /*<<< orphan*/  cfg_reg; } ;
struct TYPE_4__ {TYPE_1__ avm; } ;
struct IsdnCardState {int /*<<< orphan*/  lock; TYPE_2__ hw; } ;

/* Variables and functions */
 int AVM_STATUS0_DIS_TIMER ; 
 int AVM_STATUS0_ENA_IRQ ; 
 int AVM_STATUS0_RES_TIMER ; 
#define  CARD_INIT 131 
#define  CARD_RELEASE 130 
#define  CARD_RESET 129 
#define  CARD_TEST 128 
 int /*<<< orphan*/  ISAC_CMDR ; 
 int /*<<< orphan*/  ISAC_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct IsdnCardState*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct IsdnCardState*) ; 
 int /*<<< orphan*/  FUNC2 (struct IsdnCardState*) ; 
 int /*<<< orphan*/  FUNC3 (struct IsdnCardState*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct IsdnCardState*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct IsdnCardState *cs, int mt, void *arg)
{
	u_long flags;

	switch (mt) {
		case CARD_RESET:
			FUNC7(&cs->lock, flags);
			FUNC6(cs);
			FUNC8(&cs->lock, flags);
			return(0);
		case CARD_RELEASE:
			FUNC4(0, cs->hw.avm.cfg_reg + 2);
			FUNC5(cs->hw.avm.cfg_reg, 32);
			return(0);
		case CARD_INIT:
			FUNC7(&cs->lock, flags);
			FUNC6(cs);
			FUNC1(cs);
			FUNC3(cs);
			FUNC2(cs);
			FUNC4(AVM_STATUS0_DIS_TIMER | AVM_STATUS0_RES_TIMER,
				cs->hw.avm.cfg_reg + 2);
			FUNC0(cs, ISAC_MASK, 0);
			FUNC4(AVM_STATUS0_DIS_TIMER | AVM_STATUS0_RES_TIMER |
				AVM_STATUS0_ENA_IRQ, cs->hw.avm.cfg_reg + 2);
			/* RESET Receiver and Transmitter */
			FUNC0(cs, ISAC_CMDR, 0x41);
			FUNC8(&cs->lock, flags);
			return(0);
		case CARD_TEST:
			return(0);
	}
	return(0);
}