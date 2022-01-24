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
typedef  int u_char ;
struct TYPE_3__ {int /*<<< orphan*/ * hscx; int /*<<< orphan*/  isac; int /*<<< orphan*/  cfg_reg; } ;
struct TYPE_4__ {TYPE_1__ avm; } ;
struct IsdnCardState {int debug; int /*<<< orphan*/  lock; TYPE_2__ hw; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int AVM_A1_STAT_HSCX ; 
 int AVM_A1_STAT_ISAC ; 
 int AVM_A1_STAT_TIMER ; 
 int /*<<< orphan*/  HSCX_ISTA ; 
 int /*<<< orphan*/  HSCX_MASK ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  ISAC_ISTA ; 
 int /*<<< orphan*/  ISAC_MASK ; 
 int L1_DEB_INTSTAT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct IsdnCardState*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct IsdnCardState*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct IsdnCardState*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static irqreturn_t
FUNC9(int intno, void *dev_id)
{
	struct IsdnCardState *cs = dev_id;
	u_char val, sval;
	u_long flags;

	FUNC6(&cs->lock, flags);
	while (((sval = FUNC0(cs->hw.avm.cfg_reg)) & 0xf) != 0x7) {
		if (!(sval & AVM_A1_STAT_TIMER)) {
			FUNC1(cs->hw.avm.cfg_reg, 0x1E);
			sval = FUNC0(cs->hw.avm.cfg_reg);
		} else if (cs->debug & L1_DEB_INTSTAT)
			FUNC2(cs, "avm IntStatus %x", sval);
		if (!(sval & AVM_A1_STAT_HSCX)) {
			val = FUNC5(cs->hw.avm.hscx[1], HSCX_ISTA);
			if (val)
				FUNC3(cs, val);
		}
		if (!(sval & AVM_A1_STAT_ISAC)) {
			val = FUNC5(cs->hw.avm.isac, ISAC_ISTA);
			if (val)
				FUNC4(cs, val);
		}
	}
	FUNC8(cs->hw.avm.hscx[0], HSCX_MASK, 0xFF);
	FUNC8(cs->hw.avm.hscx[1], HSCX_MASK, 0xFF);
	FUNC8(cs->hw.avm.isac, ISAC_MASK, 0xFF);
	FUNC8(cs->hw.avm.isac, ISAC_MASK, 0x0);
	FUNC8(cs->hw.avm.hscx[0], HSCX_MASK, 0x0);
	FUNC8(cs->hw.avm.hscx[1], HSCX_MASK, 0x0);
	FUNC7(&cs->lock, flags);
	return IRQ_HANDLED;
}