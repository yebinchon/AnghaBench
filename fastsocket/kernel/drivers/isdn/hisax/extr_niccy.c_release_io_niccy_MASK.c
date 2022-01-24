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
struct TYPE_3__ {scalar_t__ isac_ale; scalar_t__ isac; scalar_t__ cfg_reg; } ;
struct TYPE_4__ {TYPE_1__ niccy; } ;
struct IsdnCardState {scalar_t__ subtyp; TYPE_2__ hw; } ;

/* Variables and functions */
 scalar_t__ NICCY_PCI ; 
 scalar_t__ PCI_IRQ_CTRL_REG ; 
 int PCI_IRQ_DISABLE ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 

__attribute__((used)) static void FUNC3(struct IsdnCardState *cs)
{
	if (cs->subtyp == NICCY_PCI) {
		int val;

		val = FUNC0(cs->hw.niccy.cfg_reg + PCI_IRQ_CTRL_REG);
		val &= PCI_IRQ_DISABLE;
		FUNC1(val, cs->hw.niccy.cfg_reg + PCI_IRQ_CTRL_REG);
		FUNC2(cs->hw.niccy.cfg_reg, 0x40);
		FUNC2(cs->hw.niccy.isac, 4);
	} else {
		FUNC2(cs->hw.niccy.isac, 2);
		FUNC2(cs->hw.niccy.isac_ale, 2);
	}
}