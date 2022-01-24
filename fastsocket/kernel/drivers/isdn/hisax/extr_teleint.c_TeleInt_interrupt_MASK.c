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
struct TYPE_3__ {int addr; } ;
struct TYPE_4__ {TYPE_1__ hfc; } ;
struct IsdnCardState {int debug; int /*<<< orphan*/  lock; TYPE_2__ hw; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  ISAC_ISTA ; 
 int /*<<< orphan*/  ISAC_MASK ; 
 int L1_DEB_ISAC ; 
 int /*<<< orphan*/  FUNC0 (struct IsdnCardState*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct IsdnCardState*,scalar_t__) ; 
 scalar_t__ FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static irqreturn_t
FUNC6(int intno, void *dev_id)
{
	struct IsdnCardState *cs = dev_id;
	u_char val;
	u_long flags;

	FUNC3(&cs->lock, flags);
	val = FUNC2(cs->hw.hfc.addr | 1, cs->hw.hfc.addr, ISAC_ISTA);
      Start_ISAC:
	if (val)
		FUNC1(cs, val);
	val = FUNC2(cs->hw.hfc.addr | 1, cs->hw.hfc.addr, ISAC_ISTA);
	if (val) {
		if (cs->debug & L1_DEB_ISAC)
			FUNC0(cs, "ISAC IntStat after IntRoutine");
		goto Start_ISAC;
	}
	FUNC5(cs->hw.hfc.addr | 1, cs->hw.hfc.addr, ISAC_MASK, 0xFF);
	FUNC5(cs->hw.hfc.addr | 1, cs->hw.hfc.addr, ISAC_MASK, 0x0);
	FUNC4(&cs->lock, flags);
	return IRQ_HANDLED;
}