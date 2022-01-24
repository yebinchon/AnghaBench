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
struct TYPE_3__ {int ctrl_reg; scalar_t__ cfg; int /*<<< orphan*/  isac; int /*<<< orphan*/  ale; scalar_t__ trig; scalar_t__ timer; scalar_t__ ctrl; } ;
struct TYPE_4__ {TYPE_1__ elsa; } ;
struct IsdnCardState {scalar_t__ subtyp; TYPE_2__ hw; } ;

/* Variables and functions */
 int ELSA_ISDN_RESET ; 
 scalar_t__ ELSA_PCMCIA_IPAC ; 
 scalar_t__ ELSA_QS1000PCI ; 
 scalar_t__ ELSA_QS3000PCI ; 
 int /*<<< orphan*/  IPAC_ACFG ; 
 int /*<<< orphan*/  IPAC_AOE ; 
 int /*<<< orphan*/  IPAC_ATX ; 
 int /*<<< orphan*/  IPAC_MASK ; 
 int /*<<< orphan*/  IPAC_PCFG ; 
 int /*<<< orphan*/  IPAC_POTA2 ; 
 scalar_t__ FUNC0 (struct IsdnCardState*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct IsdnCardState *cs)
{
	if (cs->hw.elsa.timer) {
		/* Wait 1 Timer */
		FUNC1(cs->hw.elsa.timer, 0);
		while (FUNC0(cs));
		cs->hw.elsa.ctrl_reg |= 0x50;
		cs->hw.elsa.ctrl_reg &= ~ELSA_ISDN_RESET;	/* Reset On */
		FUNC1(cs->hw.elsa.ctrl, cs->hw.elsa.ctrl_reg);
		/* Wait 1 Timer */
		FUNC1(cs->hw.elsa.timer, 0);
		while (FUNC0(cs));
		cs->hw.elsa.ctrl_reg |= ELSA_ISDN_RESET;	/* Reset Off */
		FUNC1(cs->hw.elsa.ctrl, cs->hw.elsa.ctrl_reg);
		/* Wait 1 Timer */
		FUNC1(cs->hw.elsa.timer, 0);
		while (FUNC0(cs));
		if (cs->hw.elsa.trig)
			FUNC1(cs->hw.elsa.trig, 0xff);
	}
	if ((cs->subtyp == ELSA_QS1000PCI) || (cs->subtyp == ELSA_QS3000PCI) || (cs->subtyp == ELSA_PCMCIA_IPAC)) {
		FUNC3(cs->hw.elsa.ale, cs->hw.elsa.isac, IPAC_POTA2, 0x20);
		FUNC2(10);
		FUNC3(cs->hw.elsa.ale, cs->hw.elsa.isac, IPAC_POTA2, 0x00);
		FUNC3(cs->hw.elsa.ale, cs->hw.elsa.isac, IPAC_MASK, 0xc0);
		FUNC2(10);
		if (cs->subtyp != ELSA_PCMCIA_IPAC) {
			FUNC3(cs->hw.elsa.ale, cs->hw.elsa.isac, IPAC_ACFG, 0x0);
			FUNC3(cs->hw.elsa.ale, cs->hw.elsa.isac, IPAC_AOE, 0x3c);
		} else {
			FUNC3(cs->hw.elsa.ale, cs->hw.elsa.isac, IPAC_PCFG, 0x10);
			FUNC3(cs->hw.elsa.ale, cs->hw.elsa.isac, IPAC_ACFG, 0x4);
			FUNC3(cs->hw.elsa.ale, cs->hw.elsa.isac, IPAC_AOE, 0xf8);
		}
		FUNC3(cs->hw.elsa.ale, cs->hw.elsa.isac, IPAC_ATX, 0xff);
		if (cs->subtyp == ELSA_QS1000PCI)
			FUNC1(cs->hw.elsa.cfg + 0x4c, 0x41); /* enable ELSA PCI IRQ */
		else if (cs->subtyp == ELSA_QS3000PCI)
			FUNC1(cs->hw.elsa.cfg + 0x4c, 0x43); /* enable ELSA PCI IRQ */
	}
}