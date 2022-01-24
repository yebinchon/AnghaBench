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
struct TYPE_3__ {scalar_t__ cfg_reg; } ;
struct TYPE_4__ {TYPE_1__ spt; } ;
struct IsdnCardState {int debug; int /*<<< orphan*/  lock; TYPE_2__ hw; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  HSCX_ISTA ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  ISAC_ISTA ; 
 int L1_DEB_HSCX ; 
 int L1_DEB_ISAC ; 
 scalar_t__ FUNC0 (struct IsdnCardState*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct IsdnCardState*,int /*<<< orphan*/ ) ; 
 scalar_t__ SPORTSTER_RES_IRQ ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct IsdnCardState*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct IsdnCardState*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct IsdnCardState*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t
FUNC8(int intno, void *dev_id)
{
	struct IsdnCardState *cs = dev_id;
	u_char val;
	u_long flags;

	FUNC6(&cs->lock, flags);
	val = FUNC0(cs, 1, HSCX_ISTA);
      Start_HSCX:
	if (val)
		FUNC4(cs, val);
	val = FUNC1(cs, ISAC_ISTA);
      Start_ISAC:
	if (val)
		FUNC5(cs, val);
	val = FUNC0(cs, 1, HSCX_ISTA);
	if (val) {
		if (cs->debug & L1_DEB_HSCX)
			FUNC3(cs, "HSCX IntStat after IntRoutine");
		goto Start_HSCX;
	}
	val = FUNC1(cs, ISAC_ISTA);
	if (val) {
		if (cs->debug & L1_DEB_ISAC)
			FUNC3(cs, "ISAC IntStat after IntRoutine");
		goto Start_ISAC;
	}
	/* get a new irq impulse if there any pending */
	FUNC2(cs->hw.spt.cfg_reg + SPORTSTER_RES_IRQ +1);
	FUNC7(&cs->lock, flags);
	return IRQ_HANDLED;
}