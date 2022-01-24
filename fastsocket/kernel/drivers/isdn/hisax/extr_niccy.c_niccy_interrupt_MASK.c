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
typedef  scalar_t__ u_char ;
struct TYPE_3__ {int /*<<< orphan*/  hscx; int /*<<< orphan*/  hscx_ale; int /*<<< orphan*/  isac; int /*<<< orphan*/  isac_ale; scalar_t__ cfg_reg; } ;
struct TYPE_4__ {TYPE_1__ niccy; } ;
struct IsdnCardState {scalar_t__ subtyp; int debug; int /*<<< orphan*/  lock; TYPE_2__ hw; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ HSCX_ISTA ; 
 scalar_t__ HSCX_MASK ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ ISAC_ISTA ; 
 scalar_t__ ISAC_MASK ; 
 int L1_DEB_HSCX ; 
 int L1_DEB_ISAC ; 
 scalar_t__ NICCY_PCI ; 
 int PCI_IRQ_ASSERT ; 
 scalar_t__ PCI_IRQ_CTRL_REG ; 
 int /*<<< orphan*/  FUNC0 (struct IsdnCardState*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct IsdnCardState*,scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct IsdnCardState*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 

__attribute__((used)) static irqreturn_t FUNC9(int intno, void *dev_id)
{
	struct IsdnCardState *cs = dev_id;
	u_char val;
	u_long flags;

	FUNC6(&cs->lock, flags);
	if (cs->subtyp == NICCY_PCI) {
		int ival;
		ival = FUNC2(cs->hw.niccy.cfg_reg + PCI_IRQ_CTRL_REG);
		if (!(ival & PCI_IRQ_ASSERT)) {	/* IRQ not for us (shared) */
			FUNC7(&cs->lock, flags);
			return IRQ_NONE;
		}
		FUNC4(ival, cs->hw.niccy.cfg_reg + PCI_IRQ_CTRL_REG);
	}
	val = FUNC5(cs->hw.niccy.hscx_ale, cs->hw.niccy.hscx,
			HSCX_ISTA + 0x40);
Start_HSCX:
	if (val)
		FUNC1(cs, val);
	val = FUNC5(cs->hw.niccy.isac_ale, cs->hw.niccy.isac, ISAC_ISTA);
Start_ISAC:
	if (val)
		FUNC3(cs, val);
	val = FUNC5(cs->hw.niccy.hscx_ale, cs->hw.niccy.hscx,
			HSCX_ISTA + 0x40);
	if (val) {
		if (cs->debug & L1_DEB_HSCX)
			FUNC0(cs, "HSCX IntStat after IntRoutine");
		goto Start_HSCX;
	}
	val = FUNC5(cs->hw.niccy.isac_ale, cs->hw.niccy.isac, ISAC_ISTA);
	if (val) {
		if (cs->debug & L1_DEB_ISAC)
			FUNC0(cs, "ISAC IntStat after IntRoutine");
		goto Start_ISAC;
	}
	FUNC8(cs->hw.niccy.hscx_ale, cs->hw.niccy.hscx, HSCX_MASK, 0xFF);
	FUNC8(cs->hw.niccy.hscx_ale, cs->hw.niccy.hscx, HSCX_MASK + 0x40,
		 0xFF);
	FUNC8(cs->hw.niccy.isac_ale, cs->hw.niccy.isac, ISAC_MASK, 0xFF);
	FUNC8(cs->hw.niccy.isac_ale, cs->hw.niccy.isac, ISAC_MASK, 0);
	FUNC8(cs->hw.niccy.hscx_ale, cs->hw.niccy.hscx, HSCX_MASK, 0);
	FUNC8(cs->hw.niccy.hscx_ale, cs->hw.niccy.hscx, HSCX_MASK + 0x40,0);
	FUNC7(&cs->lock, flags);
	return IRQ_HANDLED;
}