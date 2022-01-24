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
typedef  int u32 ;
struct net_device {int dummy; } ;
struct de_private {int ring_dma; struct net_device* dev; } ;
struct de_desc {int dummy; } ;

/* Variables and functions */
 int DE_RX_RING_SIZE ; 
 int /*<<< orphan*/  IntrMask ; 
 int /*<<< orphan*/  MacMode ; 
 int MacModeClear ; 
 int /*<<< orphan*/  RxMissed ; 
 int /*<<< orphan*/  RxRingAddr ; 
 int RxTx ; 
 int /*<<< orphan*/  TxRingAddr ; 
 int /*<<< orphan*/  FUNC0 (struct de_private*) ; 
 int de_intr_mask ; 
 int FUNC1 (struct de_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct de_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6 (struct de_private *de)
{
	struct net_device *dev = de->dev;
	u32 macmode;
	int rc;

	FUNC0(de);

	macmode = FUNC4(MacMode) & ~MacModeClear;

	rc = FUNC1(de);
	if (rc)
		return rc;

	FUNC2(de); /* reset phy */

	FUNC5(RxRingAddr, de->ring_dma);
	FUNC5(TxRingAddr, de->ring_dma + (sizeof(struct de_desc) * DE_RX_RING_SIZE));

	FUNC5(MacMode, RxTx | macmode);

	FUNC4(RxMissed); /* self-clearing */

	FUNC5(IntrMask, de_intr_mask);

	FUNC3(dev);

	return 0;
}