#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
typedef  scalar_t__ u_char ;
struct TYPE_4__ {int /*<<< orphan*/  isac_adr; int /*<<< orphan*/  isac_ale; int /*<<< orphan*/  jade_adr; int /*<<< orphan*/  jade_ale; scalar_t__ base; } ;
struct TYPE_5__ {TYPE_1__ ax; } ;
struct IsdnCardState {int /*<<< orphan*/  lock; TYPE_2__ hw; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_6__ {int i20IntStatus; int i20IntCtrl; } ;
typedef  TYPE_3__ I20_REGISTER_FILE ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ ISAC_ISTA ; 
 int intISDN ; 
 int /*<<< orphan*/  FUNC0 (struct IsdnCardState*,scalar_t__) ; 
 scalar_t__ jade_HDLC_ISR ; 
 int /*<<< orphan*/  FUNC1 (struct IsdnCardState*,scalar_t__,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t
FUNC5(int intno, void *dev_id)
{
	struct IsdnCardState *cs = dev_id;
	u_char val = 0;
	u_long flags;
	I20_REGISTER_FILE *pI20_Regs;

	FUNC3(&cs->lock, flags);
	pI20_Regs = (I20_REGISTER_FILE *) (cs->hw.ax.base);

	/* ISDN interrupt pending? */
	if (pI20_Regs->i20IntStatus & intISDN) {
		/* Reset the ISDN interrupt     */
		pI20_Regs->i20IntStatus = intISDN;
		/* Disable ISDN interrupt */
		pI20_Regs->i20IntCtrl &= ~intISDN;
		/* Channel A first */
		val = FUNC2(cs->hw.ax.jade_ale, cs->hw.ax.jade_adr, jade_HDLC_ISR + 0x80);
		if (val) {
			FUNC1(cs, val, 0);
		}
		/* Channel B  */
		val = FUNC2(cs->hw.ax.jade_ale, cs->hw.ax.jade_adr, jade_HDLC_ISR + 0xC0);
		if (val) {
			FUNC1(cs, val, 1);
		}
		/* D-Channel */
		val = FUNC2(cs->hw.ax.isac_ale, cs->hw.ax.isac_adr, ISAC_ISTA);
		if (val) {
			FUNC0(cs, val);
		}
		/* Reenable ISDN interrupt */
		pI20_Regs->i20IntCtrl |= intISDN;
		FUNC4(&cs->lock, flags);
		return IRQ_HANDLED;
	} else {
		FUNC4(&cs->lock, flags);
		return IRQ_NONE;
	}
}