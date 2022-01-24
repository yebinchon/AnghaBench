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
typedef  int u8 ;
struct ene_device {int saved_conf1; scalar_t__ hw_revision; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENE_CIRCFG ; 
 int ENE_CIRCFG_RX_EN ; 
 int ENE_CIRCFG_TX_EN ; 
 int ENE_CIRCFG_TX_IRQ ; 
 int /*<<< orphan*/  ENE_FW2 ; 
 int ENE_FW2_EMMITER1_CONN ; 
 int ENE_FW2_EMMITER2_CONN ; 
 scalar_t__ ENE_HW_C ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct ene_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ene_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct ene_device *dev)
{
	u8 conf1 = FUNC1(dev, ENE_CIRCFG);
	u8 fwreg2 = FUNC1(dev, ENE_FW2);

	dev->saved_conf1 = conf1;

	/* Show information about currently connected transmitter jacks */
	if (fwreg2 & ENE_FW2_EMMITER1_CONN)
		FUNC0("TX: Transmitter #1 is connected");

	if (fwreg2 & ENE_FW2_EMMITER2_CONN)
		FUNC0("TX: Transmitter #2 is connected");

	if (!(fwreg2 & (ENE_FW2_EMMITER1_CONN | ENE_FW2_EMMITER2_CONN)))
		FUNC2("TX: transmitter cable isn't connected!");

	/* disable receive on revc */
	if (dev->hw_revision == ENE_HW_C)
		conf1 &= ~ENE_CIRCFG_RX_EN;

	/* Enable TX engine */
	conf1 |= ENE_CIRCFG_TX_EN | ENE_CIRCFG_TX_IRQ;
	FUNC3(dev, ENE_CIRCFG, conf1);
}