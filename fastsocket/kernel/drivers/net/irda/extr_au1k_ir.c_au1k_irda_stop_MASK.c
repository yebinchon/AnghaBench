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
struct net_device {int dummy; } ;
struct au1k_private {int /*<<< orphan*/  timer; int /*<<< orphan*/ * irlap; } ;

/* Variables and functions */
 int /*<<< orphan*/  AU1000_IRDA_RX_INT ; 
 int /*<<< orphan*/  AU1000_IRDA_TX_INT ; 
 int /*<<< orphan*/  IR_CONFIG_1 ; 
 int /*<<< orphan*/  IR_CONFIG_2 ; 
 int /*<<< orphan*/  IR_INTERFACE_CONFIG ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct au1k_private* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev)
{
	struct au1k_private *aup = FUNC4(dev);

	/* disable interrupts */
	FUNC7(FUNC6(IR_CONFIG_2) & ~(1<<8), IR_CONFIG_2);
	FUNC7(0, IR_CONFIG_1); 
	FUNC7(0, IR_INTERFACE_CONFIG); /* disable clock */
	FUNC0();

	if (aup->irlap) {
		FUNC3(aup->irlap);
		aup->irlap = NULL;
	}

	FUNC5(dev);
	FUNC1(&aup->timer);

	/* disable the interrupt */
	FUNC2(AU1000_IRDA_TX_INT, dev);
	FUNC2(AU1000_IRDA_RX_INT, dev);
	return 0;
}