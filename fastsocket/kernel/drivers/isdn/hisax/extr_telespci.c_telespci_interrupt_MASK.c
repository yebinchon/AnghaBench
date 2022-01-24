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
struct TYPE_3__ {scalar_t__ membase; } ;
struct TYPE_4__ {TYPE_1__ teles0; } ;
struct IsdnCardState {int /*<<< orphan*/  lock; TYPE_2__ hw; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  HSCX_ISTA ; 
 int /*<<< orphan*/  HSCX_MASK ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  ISAC_ISTA ; 
 int /*<<< orphan*/  ISAC_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct IsdnCardState*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct IsdnCardState*,int) ; 
 int FUNC2 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t
FUNC9(int intno, void *dev_id)
{
	struct IsdnCardState *cs = dev_id;
	u_char hval, ival;
	u_long flags;

	FUNC4(&cs->lock, flags);
	hval = FUNC2(cs->hw.teles0.membase, 1, HSCX_ISTA);
	if (hval)
		FUNC0(cs, hval);
	ival = FUNC3(cs->hw.teles0.membase, ISAC_ISTA);
	if ((hval | ival) == 0) {
		FUNC5(&cs->lock, flags);
		return IRQ_NONE;
	}
	if (ival)
		FUNC1(cs, ival);
	/* Clear interrupt register for Zoran PCI controller */
	FUNC8(0x70000000, cs->hw.teles0.membase + 0x3C);

	FUNC6(cs->hw.teles0.membase, 0, HSCX_MASK, 0xFF);
	FUNC6(cs->hw.teles0.membase, 1, HSCX_MASK, 0xFF);
	FUNC7(cs->hw.teles0.membase, ISAC_MASK, 0xFF);
	FUNC7(cs->hw.teles0.membase, ISAC_MASK, 0x0);
	FUNC6(cs->hw.teles0.membase, 0, HSCX_MASK, 0x0);
	FUNC6(cs->hw.teles0.membase, 1, HSCX_MASK, 0x0);
	FUNC5(&cs->lock, flags);
	return IRQ_HANDLED;
}