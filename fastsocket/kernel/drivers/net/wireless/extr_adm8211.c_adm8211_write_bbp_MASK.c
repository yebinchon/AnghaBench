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
typedef  int u32 ;
struct ieee80211_hw {int /*<<< orphan*/  wiphy; struct adm8211_priv* priv; } ;
struct adm8211_priv {int bbp_type; } ;

/* Variables and functions */
 int ADM8211_BBPCTL_CCAP ; 
 int ADM8211_BBPCTL_MMISEL ; 
 int ADM8211_BBPCTL_RD ; 
 int ADM8211_BBPCTL_TXCE ; 
 int ADM8211_BBPCTL_WR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
#define  ADM8211_TYPE_ADMTEK 130 
#define  ADM8211_TYPE_INTERSIL 129 
#define  ADM8211_TYPE_RFMD 128 
 int /*<<< orphan*/  BBPCTL ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int,int) ; 

__attribute__((used)) static int FUNC4(struct ieee80211_hw *dev, u8 addr, u8 data)
{
	struct adm8211_priv *priv = dev->priv;
	unsigned int timeout;
	u32 reg;

	timeout = 10;
	while (timeout > 0) {
		reg = FUNC0(BBPCTL);
		if (!(reg & (ADM8211_BBPCTL_WR | ADM8211_BBPCTL_RD)))
			break;
		timeout--;
		FUNC2(2);
	}

	if (timeout == 0) {
		FUNC3(dev->wiphy,
			    "adm8211_write_bbp(%d,%d) failed prewrite (reg=0x%08x)\n",
			    addr, data, reg);
		return -ETIMEDOUT;
	}

	switch (priv->bbp_type) {
	case ADM8211_TYPE_INTERSIL:
		reg = ADM8211_BBPCTL_MMISEL;	/* three wire interface */
		break;
	case ADM8211_TYPE_RFMD:
		reg = (0x20 << 24) | ADM8211_BBPCTL_TXCE | ADM8211_BBPCTL_CCAP |
		      (0x01 << 18);
		break;
	case ADM8211_TYPE_ADMTEK:
		reg = (0x20 << 24) | ADM8211_BBPCTL_TXCE | ADM8211_BBPCTL_CCAP |
		      (0x05 << 18);
		break;
	}
	reg |= ADM8211_BBPCTL_WR | (addr << 8) | data;

	FUNC1(BBPCTL, reg);

	timeout = 10;
	while (timeout > 0) {
		reg = FUNC0(BBPCTL);
		if (!(reg & ADM8211_BBPCTL_WR))
			break;
		timeout--;
		FUNC2(2);
	}

	if (timeout == 0) {
		FUNC1(BBPCTL, FUNC0(BBPCTL) &
				  ~ADM8211_BBPCTL_WR);
		FUNC3(dev->wiphy,
			    "adm8211_write_bbp(%d,%d) failed postwrite (reg=0x%08x)\n",
			    addr, data, reg);
		return -ETIMEDOUT;
	}

	return 0;
}