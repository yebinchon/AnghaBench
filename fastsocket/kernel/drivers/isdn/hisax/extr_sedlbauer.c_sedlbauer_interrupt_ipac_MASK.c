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
struct TYPE_3__ {int /*<<< orphan*/  isac; int /*<<< orphan*/  adr; int /*<<< orphan*/  hscx; } ;
struct TYPE_4__ {TYPE_1__ sedl; } ;
struct IsdnCardState {int debug; int /*<<< orphan*/  lock; TYPE_2__ hw; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int HSCX_ISTA ; 
 int IPAC_ISTA ; 
 int /*<<< orphan*/  IPAC_MASK ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int ISAC_ISTA ; 
 int L1_DEB_IPAC ; 
 int L1_DEB_ISAC ; 
 int /*<<< orphan*/  FUNC0 (struct IsdnCardState*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct IsdnCardState*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct IsdnCardState*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static irqreturn_t
FUNC7(int intno, void *dev_id)
{
	struct IsdnCardState *cs = dev_id;
	u_char ista, val, icnt = 5;
	u_long flags;

	FUNC4(&cs->lock, flags);
	ista = FUNC3(cs->hw.sedl.adr, cs->hw.sedl.isac, IPAC_ISTA);
Start_IPAC:
	if (cs->debug & L1_DEB_IPAC)
		FUNC0(cs, "IPAC ISTA %02X", ista);
	if (ista & 0x0f) {
		val = FUNC3(cs->hw.sedl.adr, cs->hw.sedl.hscx, HSCX_ISTA + 0x40);
		if (ista & 0x01)
			val |= 0x01;
		if (ista & 0x04)
			val |= 0x02;
		if (ista & 0x08)
			val |= 0x04;
		if (val)
			FUNC1(cs, val);
	}
	if (ista & 0x20) {
		val = 0xfe & FUNC3(cs->hw.sedl.adr, cs->hw.sedl.isac, ISAC_ISTA | 0x80);
		if (val) {
			FUNC2(cs, val);
		}
	}
	if (ista & 0x10) {
		val = 0x01;
		FUNC2(cs, val);
	}
	ista  = FUNC3(cs->hw.sedl.adr, cs->hw.sedl.isac, IPAC_ISTA);
	if ((ista & 0x3f) && icnt) {
		icnt--;
		goto Start_IPAC;
	}
	if (!icnt)
		if (cs->debug & L1_DEB_ISAC)
			FUNC0(cs, "Sedlbauer IRQ LOOP");
	FUNC6(cs->hw.sedl.adr, cs->hw.sedl.isac, IPAC_MASK, 0xFF);
	FUNC6(cs->hw.sedl.adr, cs->hw.sedl.isac, IPAC_MASK, 0xC0);
	FUNC5(&cs->lock, flags);
	return IRQ_HANDLED;
}