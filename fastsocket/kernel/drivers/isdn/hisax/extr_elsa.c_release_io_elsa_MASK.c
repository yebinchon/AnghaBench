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
struct TYPE_3__ {scalar_t__ base; int /*<<< orphan*/  isac; int /*<<< orphan*/  ale; scalar_t__ cfg; scalar_t__ ctrl; int /*<<< orphan*/  tl; } ;
struct TYPE_4__ {TYPE_1__ elsa; } ;
struct IsdnCardState {scalar_t__ subtyp; TYPE_2__ hw; } ;

/* Variables and functions */
 scalar_t__ ELSA_PCF ; 
 scalar_t__ ELSA_PCFPRO ; 
 scalar_t__ ELSA_PCMCIA_IPAC ; 
 scalar_t__ ELSA_QS1000PCI ; 
 scalar_t__ ELSA_QS3000 ; 
 scalar_t__ ELSA_QS3000PCI ; 
 int /*<<< orphan*/  IPAC_ATX ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (struct IsdnCardState*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct IsdnCardState*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(struct IsdnCardState *cs)
{
	int bytecnt = 8;

	FUNC2(&cs->hw.elsa.tl);
#if ARCOFI_USE
	clear_arcofi(cs);
#endif
	if (cs->hw.elsa.ctrl)
		FUNC0(cs->hw.elsa.ctrl, 0);	/* LEDs Out */
	if (cs->subtyp == ELSA_QS1000PCI) {
		FUNC0(cs->hw.elsa.cfg + 0x4c, 0x01);  /* disable IRQ */
		FUNC5(cs->hw.elsa.ale, cs->hw.elsa.isac, IPAC_ATX, 0xff);
		bytecnt = 2;
		FUNC4(cs->hw.elsa.cfg, 0x80);
	}
	if (cs->subtyp == ELSA_QS3000PCI) {
		FUNC0(cs->hw.elsa.cfg + 0x4c, 0x03); /* disable ELSA PCI IRQ */
		FUNC5(cs->hw.elsa.ale, cs->hw.elsa.isac, IPAC_ATX, 0xff);
		FUNC4(cs->hw.elsa.cfg, 0x80);
	}
 	if (cs->subtyp == ELSA_PCMCIA_IPAC) {
		FUNC5(cs->hw.elsa.ale, cs->hw.elsa.isac, IPAC_ATX, 0xff);
 	}
	if ((cs->subtyp == ELSA_PCFPRO) ||
		(cs->subtyp == ELSA_QS3000) ||
		(cs->subtyp == ELSA_PCF) ||
		(cs->subtyp == ELSA_QS3000PCI)) {
		bytecnt = 16;
#if ARCOFI_USE
		release_modem(cs);
#endif
	}
	if (cs->hw.elsa.base)
		FUNC4(cs->hw.elsa.base, bytecnt);
}