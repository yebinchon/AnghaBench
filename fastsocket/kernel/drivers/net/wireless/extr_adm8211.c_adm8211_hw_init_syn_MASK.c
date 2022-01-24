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
struct ieee80211_hw {struct adm8211_priv* priv; } ;
struct adm8211_priv {int transceiver_type; } ;

/* Variables and functions */
#define  ADM8211_AL2210L 132 
#define  ADM8211_MAX2820 131 
#define  ADM8211_RFMD2948 130 
#define  ADM8211_RFMD2958 129 
#define  ADM8211_RFMD2958_RF3000_CONTROL_POWER 128 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,int,int) ; 

__attribute__((used)) static void FUNC3(struct ieee80211_hw *dev)
{
	struct adm8211_priv *priv = dev->priv;

	switch (priv->transceiver_type) {
	case ADM8211_RFMD2958:
	case ADM8211_RFMD2958_RF3000_CONTROL_POWER:
		/* comments taken from ADMtek vendor driver */

		/* Reset RF2958 after power on */
		FUNC2(dev, 0x1F, 0x00000);
		/* Initialize RF VCO Core Bias to maximum */
		FUNC2(dev, 0x0C, 0x3001F);
		/* Initialize IF PLL */
		FUNC2(dev, 0x01, 0x29C03);
		/* Initialize IF PLL Coarse Tuning */
		FUNC2(dev, 0x03, 0x1FF6F);
		/* Initialize RF PLL */
		FUNC2(dev, 0x04, 0x29403);
		/* Initialize RF PLL Coarse Tuning */
		FUNC2(dev, 0x07, 0x1456F);
		/* Initialize TX gain and filter BW (R9) */
		FUNC2(dev, 0x09,
			(priv->transceiver_type == ADM8211_RFMD2958 ?
			 0x10050 : 0x00050));
		/* Initialize CAL register */
		FUNC2(dev, 0x08, 0x3FFF8);
		break;

	case ADM8211_MAX2820:
		FUNC1(dev, 0x1, 0x01E);
		FUNC1(dev, 0x2, 0x001);
		FUNC1(dev, 0x3, 0x054);
		FUNC1(dev, 0x4, 0x310);
		FUNC1(dev, 0x5, 0x000);
		break;

	case ADM8211_AL2210L:
		FUNC0(dev, 0x0, 0x0196C);
		FUNC0(dev, 0x1, 0x007CB);
		FUNC0(dev, 0x2, 0x3582F);
		FUNC0(dev, 0x3, 0x010A9);
		FUNC0(dev, 0x4, 0x77280);
		FUNC0(dev, 0x5, 0x45641);
		FUNC0(dev, 0x6, 0xEA130);
		FUNC0(dev, 0x7, 0x80000);
		FUNC0(dev, 0x8, 0x7850F);
		FUNC0(dev, 0x9, 0xF900C);
		FUNC0(dev, 0xA, 0x00000);
		FUNC0(dev, 0xB, 0x00000);
		break;

	case ADM8211_RFMD2948:
	default:
		break;
	}
}