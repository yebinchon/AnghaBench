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
struct TYPE_3__ {int /*<<< orphan*/  hscx; int /*<<< orphan*/  adr; int /*<<< orphan*/  isac; } ;
struct TYPE_4__ {TYPE_1__ asus; } ;
struct IsdnCardState {int debug; int /*<<< orphan*/  lock; TYPE_2__ hw; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ HSCX_ISTA ; 
 scalar_t__ HSCX_MASK ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ ISAC_ISTA ; 
 scalar_t__ ISAC_MASK ; 
 int L1_DEB_HSCX ; 
 int L1_DEB_ISAC ; 
 int /*<<< orphan*/  FUNC0 (struct IsdnCardState*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct IsdnCardState*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct IsdnCardState*,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 

__attribute__((used)) static irqreturn_t
FUNC7(int intno, void *dev_id)
{
	struct IsdnCardState *cs = dev_id;
	u_char val;
	u_long flags;

	FUNC4(&cs->lock, flags);
	val = FUNC3(cs->hw.asus.adr, cs->hw.asus.hscx, HSCX_ISTA + 0x40);
      Start_HSCX:
	if (val)
		FUNC1(cs, val);
	val = FUNC3(cs->hw.asus.adr, cs->hw.asus.isac, ISAC_ISTA);
      Start_ISAC:
	if (val)
		FUNC2(cs, val);
	val = FUNC3(cs->hw.asus.adr, cs->hw.asus.hscx, HSCX_ISTA + 0x40);
	if (val) {
		if (cs->debug & L1_DEB_HSCX)
			FUNC0(cs, "HSCX IntStat after IntRoutine");
		goto Start_HSCX;
	}
	val = FUNC3(cs->hw.asus.adr, cs->hw.asus.isac, ISAC_ISTA);
	if (val) {
		if (cs->debug & L1_DEB_ISAC)
			FUNC0(cs, "ISAC IntStat after IntRoutine");
		goto Start_ISAC;
	}
	FUNC6(cs->hw.asus.adr, cs->hw.asus.hscx, HSCX_MASK, 0xFF);
	FUNC6(cs->hw.asus.adr, cs->hw.asus.hscx, HSCX_MASK + 0x40, 0xFF);
	FUNC6(cs->hw.asus.adr, cs->hw.asus.isac, ISAC_MASK, 0xFF);
	FUNC6(cs->hw.asus.adr, cs->hw.asus.isac, ISAC_MASK, 0x0);
	FUNC6(cs->hw.asus.adr, cs->hw.asus.hscx, HSCX_MASK, 0x0);
	FUNC6(cs->hw.asus.adr, cs->hw.asus.hscx, HSCX_MASK + 0x40, 0x0);
	FUNC5(&cs->lock, flags);
	return IRQ_HANDLED;
}