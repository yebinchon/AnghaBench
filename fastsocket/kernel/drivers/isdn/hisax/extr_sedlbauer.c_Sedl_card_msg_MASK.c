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
struct TYPE_3__ {int reset_off; int /*<<< orphan*/  cfg_reg; int /*<<< orphan*/  hscx; int /*<<< orphan*/  adr; int /*<<< orphan*/  chip; int /*<<< orphan*/  bus; int /*<<< orphan*/  isac; } ;
struct TYPE_4__ {TYPE_1__ sedl; } ;
struct IsdnCardState {int /*<<< orphan*/  lock; TYPE_2__ hw; int /*<<< orphan*/  subtyp; int /*<<< orphan*/  (* writeisac ) (struct IsdnCardState*,int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
#define  CARD_INIT 133 
#define  CARD_RELEASE 132 
#define  CARD_RESET 131 
#define  CARD_TEST 130 
 int /*<<< orphan*/  ISAC_CMDR ; 
 int /*<<< orphan*/  ISAC_MASK ; 
 int /*<<< orphan*/  ISAR_IRQBIT ; 
#define  MDL_INFO_CONN 129 
#define  MDL_INFO_REL 128 
 int /*<<< orphan*/  SEDL_BUS_PCI ; 
 int /*<<< orphan*/  SEDL_CHIP_ISAC_ISAR ; 
 int SEDL_ISAR_PCI_LED1 ; 
 int SEDL_ISAR_PCI_LED2 ; 
 int /*<<< orphan*/  SEDL_SPEEDFAX_PYRAMID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct IsdnCardState*) ; 
 int /*<<< orphan*/  FUNC2 (struct IsdnCardState*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct IsdnCardState*) ; 
 int /*<<< orphan*/  FUNC4 (struct IsdnCardState*) ; 
 int /*<<< orphan*/  FUNC5 (struct IsdnCardState*) ; 
 int /*<<< orphan*/  FUNC6 (struct IsdnCardState*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct IsdnCardState*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct IsdnCardState*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC12(struct IsdnCardState *cs, int mt, void *arg)
{
	u_long flags;

	switch (mt) {
		case CARD_RESET:
			FUNC7(&cs->lock, flags);
			FUNC6(cs);
			FUNC8(&cs->lock, flags);
			return(0);
		case CARD_RELEASE:
			if (cs->hw.sedl.bus == SEDL_BUS_PCI)
				/* disable all IRQ */
				FUNC0(cs->hw.sedl.cfg_reg+ 5, 0);
			if (cs->hw.sedl.chip == SEDL_CHIP_ISAC_ISAR) {
				FUNC7(&cs->lock, flags);
				FUNC11(cs->hw.sedl.adr, cs->hw.sedl.hscx,
					ISAR_IRQBIT, 0);
				FUNC11(cs->hw.sedl.adr, cs->hw.sedl.isac,
					ISAC_MASK, 0xFF);
				FUNC6(cs);
				FUNC11(cs->hw.sedl.adr, cs->hw.sedl.hscx,
					ISAR_IRQBIT, 0);
				FUNC11(cs->hw.sedl.adr, cs->hw.sedl.isac,
					ISAC_MASK, 0xFF);
				FUNC8(&cs->lock, flags);
			}
			FUNC5(cs);
			return(0);
		case CARD_INIT:
			FUNC7(&cs->lock, flags);
			if (cs->hw.sedl.bus == SEDL_BUS_PCI)
				/* enable all IRQ */
				FUNC0(cs->hw.sedl.cfg_reg+ 5, 0x02);
			FUNC6(cs);
			if (cs->hw.sedl.chip == SEDL_CHIP_ISAC_ISAR) {
				FUNC1(cs);
				FUNC11(cs->hw.sedl.adr, cs->hw.sedl.hscx,
					ISAR_IRQBIT, 0);
				FUNC3(cs);
				FUNC4(cs);
				/* Reenable all IRQ */
				cs->writeisac(cs, ISAC_MASK, 0);
				/* RESET Receiver and Transmitter */
				cs->writeisac(cs, ISAC_CMDR, 0x41);
			} else {
				FUNC2(cs, 3);
			}
			FUNC8(&cs->lock, flags);
			return(0);
		case CARD_TEST:
			return(0);
		case MDL_INFO_CONN:
			if (cs->subtyp != SEDL_SPEEDFAX_PYRAMID)
				return(0);
			FUNC7(&cs->lock, flags);
			if ((long) arg)
				cs->hw.sedl.reset_off &= ~SEDL_ISAR_PCI_LED2;
			else
				cs->hw.sedl.reset_off &= ~SEDL_ISAR_PCI_LED1;
			FUNC0(cs->hw.sedl.cfg_reg +3, cs->hw.sedl.reset_off);
			FUNC8(&cs->lock, flags);
			break;
		case MDL_INFO_REL:
			if (cs->subtyp != SEDL_SPEEDFAX_PYRAMID)
				return(0);
			FUNC7(&cs->lock, flags);
			if ((long) arg)
				cs->hw.sedl.reset_off |= SEDL_ISAR_PCI_LED2;
			else
				cs->hw.sedl.reset_off |= SEDL_ISAR_PCI_LED1;
			FUNC0(cs->hw.sedl.cfg_reg +3, cs->hw.sedl.reset_off);
			FUNC8(&cs->lock, flags);
			break;
	}
	return(0);
}