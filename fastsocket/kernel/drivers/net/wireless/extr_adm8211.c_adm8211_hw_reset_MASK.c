#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct ieee80211_hw {struct adm8211_priv* priv; } ;
struct adm8211_priv {scalar_t__ transceiver_type; TYPE_1__* pdev; } ;
struct TYPE_2__ {scalar_t__ revision; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ADM8211_CSR_TEST0_EPRLD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int ADM8211_PAR_SWR ; 
 scalar_t__ ADM8211_REV_BA ; 
 scalar_t__ ADM8211_REV_CA ; 
 scalar_t__ ADM8211_RFMD2958 ; 
 scalar_t__ ADM8211_RFMD2958_RF3000_CONTROL_POWER ; 
 int /*<<< orphan*/  CSR_TEST0 ; 
 int /*<<< orphan*/  CSR_TEST1 ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FRCTL ; 
 int /*<<< orphan*/  PAR ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct ieee80211_hw *dev)
{
	struct adm8211_priv *priv = dev->priv;
	u32 reg, tmp;
	int timeout = 100;

	/* Power-on issue */
	/* TODO: check if this is necessary */
	FUNC1(FRCTL, 0);

	/* Reset the chip */
	tmp = FUNC0(PAR);
	FUNC1(PAR, ADM8211_PAR_SWR);

	while ((FUNC0(PAR) & ADM8211_PAR_SWR) && timeout--)
		FUNC3(50);

	if (timeout <= 0)
		return -ETIMEDOUT;

	FUNC1(PAR, tmp);

	if (priv->pdev->revision == ADM8211_REV_BA &&
	    (priv->transceiver_type == ADM8211_RFMD2958_RF3000_CONTROL_POWER ||
	     priv->transceiver_type == ADM8211_RFMD2958)) {
		reg = FUNC0(CSR_TEST1);
		reg |= (1 << 4) | (1 << 5);
		FUNC1(CSR_TEST1, reg);
	} else if (priv->pdev->revision == ADM8211_REV_CA) {
		reg = FUNC0(CSR_TEST1);
		reg &= ~((1 << 4) | (1 << 5));
		FUNC1(CSR_TEST1, reg);
	}

	FUNC1(FRCTL, 0);

	reg = FUNC0(CSR_TEST0);
	reg |= ADM8211_CSR_TEST0_EPRLD;	/* EEPROM Recall */
	FUNC1(CSR_TEST0, reg);

	FUNC2(dev);

	return 0;
}