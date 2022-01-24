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
typedef  scalar_t__ u_char ;
struct IsdnCardState {int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  HSCX_ISTA ; 
 int /*<<< orphan*/  HSCX_MASK ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  ISAC_ISTA ; 
 int /*<<< orphan*/  ISAC_MASK ; 
 int MAXCOUNT ; 
 scalar_t__ FUNC0 (struct IsdnCardState*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct IsdnCardState*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct IsdnCardState*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct IsdnCardState*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct IsdnCardState*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct IsdnCardState*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t
FUNC8(int intno, void *dev_id)
{
#define MAXCOUNT 5
	struct IsdnCardState *cs = dev_id;
	u_char valisac, valhscx;
	int count = 0;
	u_long flags;

	FUNC6(&cs->lock, flags);
	do {
		valhscx = FUNC0(cs, 1, HSCX_ISTA);
		if (valhscx)
			FUNC4(cs, valhscx);
		valisac = FUNC1(cs, ISAC_ISTA);
		if (valisac)
			FUNC5(cs, valisac);
		count++;
	} while ((valhscx || valisac) && (count < MAXCOUNT));

	FUNC2(cs, 0, HSCX_MASK, 0xFF);
	FUNC2(cs, 1, HSCX_MASK, 0xFF);
	FUNC3(cs, ISAC_MASK, 0xFF);
	FUNC3(cs, ISAC_MASK, 0x0);
	FUNC2(cs, 0, HSCX_MASK, 0x0);
	FUNC2(cs, 1, HSCX_MASK, 0x0);
	FUNC7(&cs->lock, flags);
	return IRQ_HANDLED;
}