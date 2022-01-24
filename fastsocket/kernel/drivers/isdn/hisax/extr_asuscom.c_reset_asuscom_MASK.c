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
struct TYPE_3__ {int /*<<< orphan*/  isac; int /*<<< orphan*/  adr; } ;
struct TYPE_4__ {TYPE_1__ asus; } ;
struct IsdnCardState {scalar_t__ subtyp; TYPE_2__ hw; } ;

/* Variables and functions */
 scalar_t__ ASUS_IPAC ; 
 int /*<<< orphan*/  ASUS_RESET ; 
 int /*<<< orphan*/  IPAC_ACFG ; 
 int /*<<< orphan*/  IPAC_AOE ; 
 int /*<<< orphan*/  IPAC_CONF ; 
 int /*<<< orphan*/  IPAC_MASK ; 
 int /*<<< orphan*/  IPAC_PCFG ; 
 int /*<<< orphan*/  IPAC_POTA2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(struct IsdnCardState *cs)
{
	if (cs->subtyp == ASUS_IPAC)
		FUNC2(cs->hw.asus.adr, cs->hw.asus.isac, IPAC_POTA2, 0x20);
	else
		FUNC0(cs->hw.asus.adr, ASUS_RESET);	/* Reset On */
	FUNC1(10);
	if (cs->subtyp == ASUS_IPAC)
		FUNC2(cs->hw.asus.adr, cs->hw.asus.isac, IPAC_POTA2, 0x0);
	else
		FUNC0(cs->hw.asus.adr, 0);	/* Reset Off */
	FUNC1(10);
	if (cs->subtyp == ASUS_IPAC) {
		FUNC2(cs->hw.asus.adr, cs->hw.asus.isac, IPAC_CONF, 0x0);
		FUNC2(cs->hw.asus.adr, cs->hw.asus.isac, IPAC_ACFG, 0xff);
		FUNC2(cs->hw.asus.adr, cs->hw.asus.isac, IPAC_AOE, 0x0);
		FUNC2(cs->hw.asus.adr, cs->hw.asus.isac, IPAC_MASK, 0xc0);
		FUNC2(cs->hw.asus.adr, cs->hw.asus.isac, IPAC_PCFG, 0x12);
	}
}