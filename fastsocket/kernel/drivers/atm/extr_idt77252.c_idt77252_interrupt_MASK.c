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
typedef  int u32 ;
struct idt77252_dev {int /*<<< orphan*/  flags; int /*<<< orphan*/  tqueue; int /*<<< orphan*/ * irqstat; int /*<<< orphan*/  name; TYPE_2__* atmdev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_4__ {TYPE_1__* phy; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* interrupt ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  IDT77252_BIT_INTERRUPT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int SAR_CFG_FBIE ; 
 int /*<<< orphan*/  SAR_REG_CFG ; 
 int /*<<< orphan*/  SAR_REG_STAT ; 
 int SAR_STAT_EPDU ; 
 int SAR_STAT_FBQ0A ; 
 int SAR_STAT_FBQ1A ; 
 int SAR_STAT_FBQ2A ; 
 int SAR_STAT_FBQ3A ; 
 int SAR_STAT_PHYI ; 
 int SAR_STAT_RAWCF ; 
 int SAR_STAT_RSQAF ; 
 int SAR_STAT_RSQF ; 
 int SAR_STAT_TMROF ; 
 int SAR_STAT_TSIF ; 
 int SAR_STAT_TSQF ; 
 int SAR_STAT_TXICP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct idt77252_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct idt77252_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct idt77252_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct idt77252_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct idt77252_dev*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t
FUNC13(int irq, void *dev_id)
{
	struct idt77252_dev *card = dev_id;
	u32 stat;

	stat = FUNC8(SAR_REG_STAT) & 0xffff;
	if (!stat)	/* no interrupt for us */
		return IRQ_NONE;

	if (FUNC11(IDT77252_BIT_INTERRUPT, &card->flags)) {
		FUNC7("%s: Re-entering irq_handler()\n", card->name);
		goto out;
	}

	FUNC12(stat, SAR_REG_STAT);	/* reset interrupt */

	if (stat & SAR_STAT_TSIF) {	/* entry written to TSQ  */
		FUNC0("%s: TSIF\n", card->name);
		card->irqstat[15]++;
		FUNC5(card);
	}
	if (stat & SAR_STAT_TXICP) {	/* Incomplete CS-PDU has  */
		FUNC0("%s: TXICP\n", card->name);
		card->irqstat[14]++;
#ifdef CONFIG_ATM_IDT77252_DEBUG
		idt77252_tx_dump(card);
#endif
	}
	if (stat & SAR_STAT_TSQF) {	/* TSQ 7/8 full           */
		FUNC0("%s: TSQF\n", card->name);
		card->irqstat[12]++;
		FUNC5(card);
	}
	if (stat & SAR_STAT_TMROF) {	/* Timer overflow         */
		FUNC0("%s: TMROF\n", card->name);
		card->irqstat[11]++;
		FUNC2(card);
	}

	if (stat & SAR_STAT_EPDU) {	/* Got complete CS-PDU    */
		FUNC0("%s: EPDU\n", card->name);
		card->irqstat[5]++;
		FUNC3(card);
	}
	if (stat & SAR_STAT_RSQAF) {	/* RSQ is 7/8 full        */
		FUNC0("%s: RSQAF\n", card->name);
		card->irqstat[1]++;
		FUNC3(card);
	}
	if (stat & SAR_STAT_RSQF) {	/* RSQ is full            */
		FUNC0("%s: RSQF\n", card->name);
		card->irqstat[6]++;
		FUNC3(card);
	}
	if (stat & SAR_STAT_RAWCF) {	/* Raw cell received      */
		FUNC0("%s: RAWCF\n", card->name);
		card->irqstat[4]++;
		FUNC4(card);
	}

	if (stat & SAR_STAT_PHYI) {	/* PHY device interrupt   */
		FUNC0("%s: PHYI", card->name);
		card->irqstat[10]++;
		if (card->atmdev->phy && card->atmdev->phy->interrupt)
			card->atmdev->phy->interrupt(card->atmdev);
	}

	if (stat & (SAR_STAT_FBQ0A | SAR_STAT_FBQ1A |
		    SAR_STAT_FBQ2A | SAR_STAT_FBQ3A)) {

		FUNC12(FUNC8(SAR_REG_CFG) & ~(SAR_CFG_FBIE), SAR_REG_CFG);

		FUNC0("%s: FBQA: %04x\n", card->name, stat);

		if (stat & SAR_STAT_FBQ0A)
			card->irqstat[2]++;
		if (stat & SAR_STAT_FBQ1A)
			card->irqstat[3]++;
		if (stat & SAR_STAT_FBQ2A)
			card->irqstat[7]++;
		if (stat & SAR_STAT_FBQ3A)
			card->irqstat[8]++;

		FUNC9(&card->tqueue);
	}

out:
	FUNC1(IDT77252_BIT_INTERRUPT, &card->flags);
	return IRQ_HANDLED;
}