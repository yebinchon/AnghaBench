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
struct TYPE_3__ {int last_is0; int irqstat0; scalar_t__ base; } ;
struct TYPE_4__ {TYPE_1__ njet; } ;
struct IsdnCardState {int debug; int /*<<< orphan*/  lock; int /*<<< orphan*/  HW_Flags; TYPE_2__ hw; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FLG_LOCK_ATOMIC ; 
 int /*<<< orphan*/  ICC_ISTA ; 
 int /*<<< orphan*/  ICC_MASK ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int L1_DEB_ISAC ; 
 scalar_t__ NETJET_DMA_READ_ADR ; 
 scalar_t__ NETJET_DMA_READ_IRQ ; 
 scalar_t__ NETJET_DMA_WRITE_ADR ; 
 scalar_t__ NETJET_DMA_WRITE_IRQ ; 
 int NETJET_IRQM0_READ ; 
 int NETJET_IRQM0_WRITE ; 
 scalar_t__ NETJET_IRQSTAT1 ; 
 int NETJET_ISACIRQ ; 
 int FUNC0 (struct IsdnCardState*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct IsdnCardState*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct IsdnCardState*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct IsdnCardState*,int) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct IsdnCardState*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct IsdnCardState*) ; 

__attribute__((used)) static irqreturn_t
FUNC12(int intno, void *dev_id)
{
	struct IsdnCardState *cs = dev_id;
	u_char val, sval;
	u_long flags;

	FUNC7(&cs->lock, flags);
	if (!((sval = FUNC2(cs->hw.njet.base + NETJET_IRQSTAT1)) &
		NETJET_ISACIRQ)) {
		val = FUNC0(cs, ICC_ISTA);
		if (cs->debug & L1_DEB_ISAC)
			FUNC3(cs, "tiger: i1 %x %x", sval, val);
		if (val) {
			FUNC4(cs, val);
			FUNC1(cs, ICC_MASK, 0xFF);
			FUNC1(cs, ICC_MASK, 0x0);
		}
	}
	/* start new code 13/07/00 GE */
	/* set bits in sval to indicate which page is free */
	if (FUNC5(cs->hw.njet.base + NETJET_DMA_WRITE_ADR) <
		FUNC5(cs->hw.njet.base + NETJET_DMA_WRITE_IRQ))
		/* the 2nd write page is free */
		sval = 0x08;
	else	/* the 1st write page is free */
		sval = 0x04;	
	if (FUNC5(cs->hw.njet.base + NETJET_DMA_READ_ADR) <
		FUNC5(cs->hw.njet.base + NETJET_DMA_READ_IRQ))
		/* the 2nd read page is free */
		sval = sval | 0x02;
	else	/* the 1st read page is free */
		sval = sval | 0x01;	
	if (sval != cs->hw.njet.last_is0) /* we have a DMA interrupt */
	{
		if (FUNC10(FLG_LOCK_ATOMIC, &cs->HW_Flags)) {
			FUNC8(&cs->lock, flags);
			return IRQ_HANDLED;
		}
		cs->hw.njet.irqstat0 = sval;
		if ((cs->hw.njet.irqstat0 & NETJET_IRQM0_READ) != 
			(cs->hw.njet.last_is0 & NETJET_IRQM0_READ))
			/* we have a read dma int */
			FUNC6(cs);
		if ((cs->hw.njet.irqstat0 & NETJET_IRQM0_WRITE) !=
			(cs->hw.njet.last_is0 & NETJET_IRQM0_WRITE))
			/* we have a write dma int */
			FUNC11(cs);
		/* end new code 13/07/00 GE */
		FUNC9(FLG_LOCK_ATOMIC, &cs->HW_Flags);
	}
	FUNC8(&cs->lock, flags);
	return IRQ_HANDLED;
}