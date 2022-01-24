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
struct TYPE_3__ {unsigned long cfg_reg; } ;
struct TYPE_4__ {TYPE_1__ gazel; } ;
struct IsdnCardState {int subtyp; TYPE_2__ hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ INT_HSCX_EN ; 
 scalar_t__ INT_IPAC_EN ; 
 scalar_t__ INT_ISAC_EN ; 
 scalar_t__ INT_PCI_EN ; 
 int /*<<< orphan*/  IPAC_ACFG ; 
 int /*<<< orphan*/  IPAC_AOE ; 
 int /*<<< orphan*/  IPAC_CONF ; 
 int /*<<< orphan*/  IPAC_MASK ; 
 int /*<<< orphan*/  IPAC_POTA2 ; 
 int /*<<< orphan*/  PLX_CNTRL ; 
 int /*<<< orphan*/  PLX_INCSR ; 
#define  R647 131 
#define  R685 130 
#define  R742 129 
#define  R753 128 
 unsigned long RESET_9050 ; 
 unsigned long RESET_GAZEL ; 
 int /*<<< orphan*/  FUNC1 (struct IsdnCardState*,int /*<<< orphan*/ ,int) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(struct IsdnCardState *cs)
{
	unsigned long plxcntrl, addr = cs->hw.gazel.cfg_reg;

	switch (cs->subtyp) {
		case R647:
			FUNC5(addr, 0, 0);
			FUNC0(10);
			FUNC5(addr, 0, 1);
			FUNC0(2);
			break;
		case R685:
			plxcntrl = FUNC2(addr + PLX_CNTRL);
			plxcntrl |= (RESET_9050 + RESET_GAZEL);
			FUNC4(plxcntrl, addr + PLX_CNTRL);
			plxcntrl &= ~(RESET_9050 + RESET_GAZEL);
			FUNC0(4);
			FUNC4(plxcntrl, addr + PLX_CNTRL);
			FUNC0(10);
			FUNC3(INT_ISAC_EN + INT_HSCX_EN + INT_PCI_EN, addr + PLX_INCSR);
			break;
		case R753:
			plxcntrl = FUNC2(addr + PLX_CNTRL);
			plxcntrl |= (RESET_9050 + RESET_GAZEL);
			FUNC4(plxcntrl, addr + PLX_CNTRL);
			plxcntrl &= ~(RESET_9050 + RESET_GAZEL);
			FUNC1(cs, IPAC_POTA2 - 0x80, 0x20);
			FUNC0(4);
			FUNC4(plxcntrl, addr + PLX_CNTRL);
			FUNC0(10);
			FUNC1(cs, IPAC_POTA2 - 0x80, 0x00);
			FUNC1(cs, IPAC_ACFG - 0x80, 0xff);
			FUNC1(cs, IPAC_AOE - 0x80, 0x0);
			FUNC1(cs, IPAC_MASK - 0x80, 0xff);
			FUNC1(cs, IPAC_CONF - 0x80, 0x1);
			FUNC3(INT_IPAC_EN + INT_PCI_EN, addr + PLX_INCSR);
			FUNC1(cs, IPAC_MASK - 0x80, 0xc0);
			break;
		case R742:
			FUNC1(cs, IPAC_POTA2 - 0x80, 0x20);
			FUNC0(4);
			FUNC1(cs, IPAC_POTA2 - 0x80, 0x00);
			FUNC1(cs, IPAC_ACFG - 0x80, 0xff);
			FUNC1(cs, IPAC_AOE - 0x80, 0x0);
			FUNC1(cs, IPAC_MASK - 0x80, 0xff);
			FUNC1(cs, IPAC_CONF - 0x80, 0x1);
			FUNC1(cs, IPAC_MASK - 0x80, 0xc0);
			break;
	}
	return (0);
}