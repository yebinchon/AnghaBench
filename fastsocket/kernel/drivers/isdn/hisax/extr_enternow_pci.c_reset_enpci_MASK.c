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
struct TYPE_3__ {int ctrl_reg; int auxd; scalar_t__ auxa; scalar_t__ base; scalar_t__ dmactrl; } ;
struct TYPE_4__ {TYPE_1__ njet; } ;
struct IsdnCardState {int debug; TYPE_2__ hw; } ;

/* Variables and functions */
 int L1_DEB_ISAC ; 
 scalar_t__ NETJET_AUXCTRL ; 
 scalar_t__ NETJET_CTRL ; 
 scalar_t__ NETJET_IRQMASK1 ; 
 int TJ_AMD_IRQ ; 
 int /*<<< orphan*/  FUNC0 (struct IsdnCardState*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void
FUNC3(struct IsdnCardState *cs)
{
	if (cs->debug & L1_DEB_ISAC)
		FUNC0(cs, "enter:now PCI: reset");

	/* Reset on, (also for AMD) */
	cs->hw.njet.ctrl_reg = 0x07;
	FUNC2(cs->hw.njet.ctrl_reg, cs->hw.njet.base + NETJET_CTRL);
	FUNC1(20);
	/* Reset off */
	cs->hw.njet.ctrl_reg = 0x30;
	FUNC2(cs->hw.njet.ctrl_reg, cs->hw.njet.base + NETJET_CTRL);
	/* 20ms delay */
	FUNC1(20);
	cs->hw.njet.auxd = 0;  // LED-status
	cs->hw.njet.dmactrl = 0;
	FUNC2(~TJ_AMD_IRQ, cs->hw.njet.base + NETJET_AUXCTRL);
	FUNC2(TJ_AMD_IRQ, cs->hw.njet.base + NETJET_IRQMASK1);
	FUNC2(cs->hw.njet.auxd, cs->hw.njet.auxa); // LED off
}