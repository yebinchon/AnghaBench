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
struct TYPE_3__ {int /*<<< orphan*/  membase; } ;
struct TYPE_4__ {TYPE_1__ teles0; } ;
struct IsdnCardState {int debug; int /*<<< orphan*/  lock; TYPE_2__ hw; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  HSCX_ISTA ; 
 int /*<<< orphan*/  HSCX_MASK ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  ISAC_ISTA ; 
 int /*<<< orphan*/  ISAC_MASK ; 
 int L1_DEB_HSCX ; 
 int L1_DEB_ISAC ; 
 int /*<<< orphan*/  FUNC0 (struct IsdnCardState*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct IsdnCardState*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct IsdnCardState*,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static irqreturn_t
FUNC9(int intno, void *dev_id)
{
	struct IsdnCardState *cs = dev_id;
	u_char val;
	u_long flags;
	int count = 0;

	FUNC5(&cs->lock, flags);
	val = FUNC3(cs->hw.teles0.membase, 1, HSCX_ISTA);
      Start_HSCX:
	if (val)
		FUNC1(cs, val);
	val = FUNC4(cs->hw.teles0.membase, ISAC_ISTA);
      Start_ISAC:
	if (val)
		FUNC2(cs, val);
	count++;
	val = FUNC3(cs->hw.teles0.membase, 1, HSCX_ISTA);
	if (val && count < 5) {
		if (cs->debug & L1_DEB_HSCX)
			FUNC0(cs, "HSCX IntStat after IntRoutine");
		goto Start_HSCX;
	}
	val = FUNC4(cs->hw.teles0.membase, ISAC_ISTA);
	if (val && count < 5) {
		if (cs->debug & L1_DEB_ISAC)
			FUNC0(cs, "ISAC IntStat after IntRoutine");
		goto Start_ISAC;
	}
	FUNC7(cs->hw.teles0.membase, 0, HSCX_MASK, 0xFF);
	FUNC7(cs->hw.teles0.membase, 1, HSCX_MASK, 0xFF);
	FUNC8(cs->hw.teles0.membase, ISAC_MASK, 0xFF);
	FUNC8(cs->hw.teles0.membase, ISAC_MASK, 0x0);
	FUNC7(cs->hw.teles0.membase, 0, HSCX_MASK, 0x0);
	FUNC7(cs->hw.teles0.membase, 1, HSCX_MASK, 0x0);
	FUNC6(&cs->lock, flags);
	return IRQ_HANDLED;
}