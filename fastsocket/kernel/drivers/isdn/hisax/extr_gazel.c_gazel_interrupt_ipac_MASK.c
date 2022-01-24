#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
typedef  int u_char ;
struct IsdnCardState {int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  HSCX_ISTA ; 
 scalar_t__ IPAC_ISTA ; 
 scalar_t__ IPAC_MASK ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ ISAC_ISTA ; 
 int MAXCOUNT ; 
 int FUNC0 (struct IsdnCardState*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct IsdnCardState*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct IsdnCardState*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct IsdnCardState*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct IsdnCardState*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t
FUNC7(int intno, void *dev_id)
{
	struct IsdnCardState *cs = dev_id;
	u_char ista, val;
	int count = 0;
	u_long flags;
	
	FUNC5(&cs->lock, flags);
	ista = FUNC1(cs, IPAC_ISTA - 0x80);
	do {
		if (ista & 0x0f) {
			val = FUNC0(cs, 1, HSCX_ISTA);
			if (ista & 0x01)
				val |= 0x01;
			if (ista & 0x04)
				val |= 0x02;
			if (ista & 0x08)
				val |= 0x04;
			if (val) {
				FUNC3(cs, val);
			}
		}
		if (ista & 0x20) {
			val = 0xfe & FUNC1(cs, ISAC_ISTA);
			if (val) {
				FUNC4(cs, val);
			}
		}
		if (ista & 0x10) {
			val = 0x01;
			FUNC4(cs, val);
		}
		ista = FUNC1(cs, IPAC_ISTA - 0x80);
		count++;
	}
	while ((ista & 0x3f) && (count < MAXCOUNT));

	FUNC2(cs, IPAC_MASK - 0x80, 0xFF);
	FUNC2(cs, IPAC_MASK - 0x80, 0xC0);
	FUNC6(&cs->lock, flags);
	return IRQ_HANDLED;
}