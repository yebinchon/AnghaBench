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
struct TYPE_3__ {unsigned char last_is0; unsigned char irqstat0; scalar_t__ base; } ;
struct TYPE_4__ {TYPE_1__ njet; } ;
struct IsdnCardState {int /*<<< orphan*/  lock; int /*<<< orphan*/  HW_Flags; TYPE_2__ hw; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct IsdnCardState*,unsigned char) ; 
 int /*<<< orphan*/  FLG_LOCK_ATOMIC ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ NETJET_DMA_READ_ADR ; 
 scalar_t__ NETJET_DMA_READ_IRQ ; 
 scalar_t__ NETJET_DMA_WRITE_ADR ; 
 scalar_t__ NETJET_DMA_WRITE_IRQ ; 
 int NETJET_IRQM0_READ ; 
 int NETJET_IRQM0_WRITE ; 
 scalar_t__ NETJET_IRQSTAT0 ; 
 scalar_t__ NETJET_IRQSTAT1 ; 
 unsigned char FUNC1 (struct IsdnCardState*,int) ; 
 unsigned char TJ_AMD_IRQ ; 
 unsigned char FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct IsdnCardState*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct IsdnCardState*) ; 

__attribute__((used)) static irqreturn_t
FUNC11(int intno, void *dev_id)
{
	struct IsdnCardState *cs = dev_id;
	unsigned char s0val, s1val, ir;
	u_long flags;

	FUNC6(&cs->lock, flags);
	s1val = FUNC2(cs->hw.njet.base + NETJET_IRQSTAT1);

        /* AMD threw an interrupt */
	if (!(s1val & TJ_AMD_IRQ)) {
                /* read and clear interrupt-register */
		ir = FUNC1(cs, 0x00);
		FUNC0(cs, ir);
		s1val = 1;
	} else
		s1val = 0;
	s0val = FUNC2(cs->hw.njet.base + NETJET_IRQSTAT0);
	if ((s0val | s1val)==0) { // shared IRQ
		FUNC7(&cs->lock, flags);
		return IRQ_NONE;
	} 
	if (s0val)
		FUNC4(s0val, cs->hw.njet.base + NETJET_IRQSTAT0);

	/* DMA-Interrupt: B-channel-stuff */
	/* set bits in sval to indicate which page is free */
	if (FUNC3(cs->hw.njet.base + NETJET_DMA_WRITE_ADR) <
		FUNC3(cs->hw.njet.base + NETJET_DMA_WRITE_IRQ))
		/* the 2nd write page is free */
		s0val = 0x08;
	else	/* the 1st write page is free */
		s0val = 0x04;
	if (FUNC3(cs->hw.njet.base + NETJET_DMA_READ_ADR) <
		FUNC3(cs->hw.njet.base + NETJET_DMA_READ_IRQ))
		/* the 2nd read page is free */
		s0val = s0val | 0x02;
	else	/* the 1st read page is free */
		s0val = s0val | 0x01;
	if (s0val != cs->hw.njet.last_is0) /* we have a DMA interrupt */
	{
		if (FUNC9(FLG_LOCK_ATOMIC, &cs->HW_Flags)) {
			FUNC7(&cs->lock, flags);
			return IRQ_HANDLED;
		}
		cs->hw.njet.irqstat0 = s0val;
		if ((cs->hw.njet.irqstat0 & NETJET_IRQM0_READ) !=
			(cs->hw.njet.last_is0 & NETJET_IRQM0_READ))
			/* we have a read dma int */
			FUNC5(cs);
		if ((cs->hw.njet.irqstat0 & NETJET_IRQM0_WRITE) !=
			(cs->hw.njet.last_is0 & NETJET_IRQM0_WRITE))
			/* we have a write dma int */
			FUNC10(cs);
		FUNC8(FLG_LOCK_ATOMIC, &cs->HW_Flags);
	}
	FUNC7(&cs->lock, flags);
	return IRQ_HANDLED;
}