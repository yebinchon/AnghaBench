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
struct IsdnCardState {TYPE_2__ hw; } ;

/* Variables and functions */
 scalar_t__ NETJET_AUXCTRL ; 
 scalar_t__ NETJET_CTRL ; 
 scalar_t__ NETJET_IRQMASK1 ; 
 int NETJET_ISACIRQ ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void
FUNC2(struct IsdnCardState *cs)
{
	cs->hw.njet.ctrl_reg = 0xff;  /* Reset On */
	FUNC0(cs->hw.njet.base + NETJET_CTRL, cs->hw.njet.ctrl_reg);
	FUNC1(10);
	cs->hw.njet.ctrl_reg = 0x40;  /* Reset Off and status read clear */
	/* now edge triggered for TJ320 GE 13/07/00 */
	FUNC0(cs->hw.njet.base + NETJET_CTRL, cs->hw.njet.ctrl_reg);
	FUNC1(10);
	cs->hw.njet.auxd = 0xC0;
	cs->hw.njet.dmactrl = 0;
	FUNC0(cs->hw.njet.auxa, 0);
	FUNC0(cs->hw.njet.base + NETJET_AUXCTRL, ~NETJET_ISACIRQ);
	FUNC0(cs->hw.njet.base + NETJET_IRQMASK1, NETJET_ISACIRQ);
	FUNC0(cs->hw.njet.auxa, cs->hw.njet.auxd);
}