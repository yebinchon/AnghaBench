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
struct TYPE_3__ {scalar_t__ cfg_reg; } ;
struct TYPE_4__ {TYPE_1__ avm; } ;
struct IsdnCardState {int /*<<< orphan*/  lock; TYPE_2__ hw; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int AVM_STATUS0_IRQ_HDLC ; 
 int AVM_STATUS0_IRQ_ISAC ; 
 int AVM_STATUS0_IRQ_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct IsdnCardState*) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  ISAC_ISTA ; 
 int /*<<< orphan*/  ISAC_MASK ; 
 int FUNC1 (struct IsdnCardState*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct IsdnCardState*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct IsdnCardState*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t
FUNC7(int intno, void *dev_id)
{
	struct IsdnCardState *cs = dev_id;
	u_long flags;
	u_char val;
	u_char sval;

	FUNC5(&cs->lock, flags);
	sval = FUNC3(cs->hw.avm.cfg_reg + 2);
	if ((sval & AVM_STATUS0_IRQ_MASK) == AVM_STATUS0_IRQ_MASK) {
		/* possible a shared  IRQ reqest */
		FUNC6(&cs->lock, flags);
		return IRQ_NONE;
	}
	if (!(sval & AVM_STATUS0_IRQ_ISAC)) {
		val = FUNC1(cs, ISAC_ISTA);
		FUNC4(cs, val);
	}
	if (!(sval & AVM_STATUS0_IRQ_HDLC)) {
		FUNC0(cs);
	}
	FUNC2(cs, ISAC_MASK, 0xFF);
	FUNC2(cs, ISAC_MASK, 0x0);
	FUNC6(&cs->lock, flags);
	return IRQ_HANDLED;
}