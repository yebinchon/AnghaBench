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
typedef  int u8 ;
struct TYPE_4__ {int dmacur; int idx; int dmastart; scalar_t__ dmairq; } ;
struct TYPE_3__ {int dmacur; int idx; int dmastart; scalar_t__ dmairq; } ;
struct tiger_hw {int base; int last_is0; int /*<<< orphan*/  lock; TYPE_2__ send; TYPE_1__ recv; int /*<<< orphan*/  name; int /*<<< orphan*/  isac; int /*<<< orphan*/  irqcnt; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  ISAC_ISTA ; 
 int NJ_DMA_READ_ADR ; 
 int NJ_DMA_WRITE_ADR ; 
 int NJ_IRQM0_RD_MASK ; 
 int NJ_IRQM0_WR_MASK ; 
 int NJ_IRQSTAT0 ; 
 int NJ_IRQSTAT1 ; 
 int NJ_ISACIRQ ; 
 int FUNC0 (struct tiger_hw*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int,int,...) ; 
 int /*<<< orphan*/  FUNC6 (struct tiger_hw*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct tiger_hw*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t
FUNC10(int intno, void *dev_id)
{
	struct tiger_hw *card = dev_id;
	u8 val, s1val, s0val;

	FUNC8(&card->lock);
	s0val = FUNC1(card->base | NJ_IRQSTAT0);
	s1val = FUNC1(card->base | NJ_IRQSTAT1);
	if ((s1val & NJ_ISACIRQ) && (s0val == 0)) {
		/* shared IRQ */
		FUNC9(&card->lock);
		return IRQ_NONE;
	}
	FUNC5("%s: IRQSTAT0 %02x IRQSTAT1 %02x\n", card->name, s0val, s1val);
	card->irqcnt++;
	if (!(s1val & NJ_ISACIRQ)) {
		val = FUNC0(card, ISAC_ISTA);
		if (val)
			FUNC3(&card->isac, val);
	}

	if (s0val)
		/* write to clear */
		FUNC4(s0val, card->base | NJ_IRQSTAT0);
	else
		goto end;
	s1val = s0val;
	/* set bits in sval to indicate which page is free */
	card->recv.dmacur = FUNC2(card->base | NJ_DMA_WRITE_ADR);
	card->recv.idx = (card->recv.dmacur - card->recv.dmastart) >> 2;
	if (card->recv.dmacur < card->recv.dmairq)
		s0val = 0x08;	/* the 2nd write area is free */
	else
		s0val = 0x04;	/* the 1st write area is free */

	card->send.dmacur = FUNC2(card->base | NJ_DMA_READ_ADR);
	card->send.idx = (card->send.dmacur - card->send.dmastart) >> 2;
	if (card->send.dmacur < card->send.dmairq)
		s0val |= 0x02;	/* the 2nd read area is free */
	else
		s0val |= 0x01;	/* the 1st read area is free */

	FUNC5("%s: DMA Status %02x/%02x/%02x %d/%d\n", card->name,
		s1val, s0val, card->last_is0,
		card->recv.idx, card->send.idx);
	/* test if we have a DMA interrupt */
	if (s0val != card->last_is0) {
		if ((s0val & NJ_IRQM0_RD_MASK) !=
		    (card->last_is0 & NJ_IRQM0_RD_MASK))
			/* got a write dma int */
			FUNC7(card, s0val);
		if ((s0val & NJ_IRQM0_WR_MASK) !=
		    (card->last_is0 & NJ_IRQM0_WR_MASK))
			/* got a read dma int */
			FUNC6(card, s0val);
	}
end:
	FUNC9(&card->lock);
	return IRQ_HANDLED;
}