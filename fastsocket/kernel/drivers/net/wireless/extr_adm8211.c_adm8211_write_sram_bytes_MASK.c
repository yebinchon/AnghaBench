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
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct ieee80211_hw {struct adm8211_priv* priv; } ;
struct adm8211_priv {TYPE_1__* pdev; } ;
struct TYPE_2__ {scalar_t__ revision; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ ADM8211_REV_BA ; 
 int /*<<< orphan*/  WEPCTL ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,unsigned int,int) ; 

__attribute__((used)) static void FUNC3(struct ieee80211_hw *dev,
				     unsigned int addr, u8 *buf,
				     unsigned int len)
{
	struct adm8211_priv *priv = dev->priv;
	u32 reg = FUNC0(WEPCTL);
	unsigned int i;

	if (priv->pdev->revision < ADM8211_REV_BA) {
		for (i = 0; i < len; i += 2) {
			u16 val = buf[i] | (buf[i + 1] << 8);
			FUNC2(dev, addr + i / 2, val);
		}
	} else {
		for (i = 0; i < len; i += 4) {
			u32 val = (buf[i + 0] << 0 ) | (buf[i + 1] << 8 ) |
				  (buf[i + 2] << 16) | (buf[i + 3] << 24);
			FUNC2(dev, addr + i / 4, val);
		}
	}

	FUNC1(WEPCTL, reg);
}