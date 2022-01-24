#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct ieee80211_hw {struct adm8211_priv* priv; } ;
struct adm8211_priv {TYPE_1__* pdev; } ;
struct TYPE_5__ {int bitrate; } ;
struct TYPE_4__ {scalar_t__ revision; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ ADM8211_REV_BA ; 
 int /*<<< orphan*/  ADM8211_SRAM_SUPP_RATE ; 
 int FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  PLCPHD ; 
 int /*<<< orphan*/  TXLMT ; 
 TYPE_2__* adm8211_rates ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static int FUNC4(struct ieee80211_hw *dev)
{
	struct adm8211_priv *priv = dev->priv;
	u32 reg;
	int i = 0;
	u8 rate_buf[12] = {0};

	/* write supported rates */
	if (priv->pdev->revision != ADM8211_REV_BA) {
		rate_buf[0] = FUNC2(adm8211_rates);
		for (i = 0; i < FUNC2(adm8211_rates); i++)
			rate_buf[i + 1] = (adm8211_rates[i].bitrate / 5) | 0x80;
	} else {
		/* workaround for rev BA specific bug */
		rate_buf[0] = 0x04;
		rate_buf[1] = 0x82;
		rate_buf[2] = 0x04;
		rate_buf[3] = 0x0b;
		rate_buf[4] = 0x16;
	}

	FUNC3(dev, ADM8211_SRAM_SUPP_RATE, rate_buf,
				 FUNC2(adm8211_rates) + 1);

	reg = FUNC0(PLCPHD) & 0x00FFFFFF; /* keep bits 0-23 */
	reg |= 1 << 15;	/* short preamble */
	reg |= 110 << 24;
	FUNC1(PLCPHD, reg);

	/* MTMLT   = 512 TU (max TX MSDU lifetime)
	 * BCNTSIG = plcp_signal (beacon, probe resp, and atim TX rate)
	 * SRTYLIM = 224 (short retry limit, TX header value is default) */
	FUNC1(TXLMT, (512 << 16) | (110 << 8) | (224 << 0));

	return 0;
}