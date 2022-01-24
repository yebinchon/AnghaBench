#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct net_device {int /*<<< orphan*/  base_addr; } ;
struct TYPE_7__ {scalar_t__ magic; } ;
struct TYPE_6__ {scalar_t__ arb_divider; } ;
struct baycom_state {TYPE_2__ hdrv; TYPE_1__ modem; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ HDLCDRV_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct baycom_state*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct baycom_state*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,TYPE_2__*) ; 
 unsigned char FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 struct baycom_state* FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct net_device*,struct baycom_state*) ; 
 int /*<<< orphan*/  FUNC17 (struct net_device*,struct baycom_state*) ; 

__attribute__((used)) static irqreturn_t FUNC18(int irq, void *dev_id)
{
	struct net_device *dev = (struct net_device *)dev_id;
	struct baycom_state *bc = FUNC14(dev);
	unsigned char iir;

	if (!dev || !bc || bc->hdrv.magic != HDLCDRV_MAGIC)
		return IRQ_NONE;
	/* fast way out */
	if ((iir = FUNC11(FUNC0(dev->base_addr))) & 1)
		return IRQ_NONE;
	FUNC6(bc);
	do {
		switch (iir & 6) {
		case 6:
			FUNC11(FUNC1(dev->base_addr));
			break;
			
		case 4:
			FUNC11(FUNC3(dev->base_addr));
			break;
			
		case 2:
			/*
			 * check if transmitter active
			 */
			if (FUNC8(&bc->hdrv))
				FUNC17(dev, bc);
			else {
				FUNC16(dev, bc);
				bc->modem.arb_divider--;
			}
			FUNC15(0x00, FUNC5(dev->base_addr));
			break;
			
		default:
			FUNC11(FUNC2(dev->base_addr));
			break;
		}
		iir = FUNC11(FUNC0(dev->base_addr));
	} while (!(iir & 1));
	if (bc->modem.arb_divider <= 0) {
		bc->modem.arb_divider = FUNC4(bc);
		FUNC13();
		FUNC7(dev, &bc->hdrv);
	}
	FUNC13();
	FUNC10(dev, &bc->hdrv);
	FUNC9(dev, &bc->hdrv);
	FUNC12();
	return IRQ_HANDLED;
}