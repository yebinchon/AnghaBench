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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct ieee80211_hw {struct ath9k_htc_priv* priv; } ;
struct htc_target {struct ath9k_htc_priv* drv_priv; } ;
struct device {int dummy; } ;
struct ath9k_htc_priv {int /*<<< orphan*/  wmi; struct device* dev; struct htc_target* htc; struct ieee80211_hw* hw; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*,struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath9k_htc_priv*) ; 
 int /*<<< orphan*/  ath9k_htc_ops ; 
 int FUNC2 (struct ath9k_htc_priv*) ; 
 int FUNC3 (struct ath9k_htc_priv*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ath9k_htc_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ath9k_htc_priv*) ; 
 struct ieee80211_hw* FUNC6 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_hw*) ; 

int FUNC8(struct htc_target *htc_handle, struct device *dev,
			   u16 devid, char *product, u32 drv_info)
{
	struct ieee80211_hw *hw;
	struct ath9k_htc_priv *priv;
	int ret;

	hw = FUNC6(sizeof(struct ath9k_htc_priv), &ath9k_htc_ops);
	if (!hw)
		return -ENOMEM;

	priv = hw->priv;
	priv->hw = hw;
	priv->htc = htc_handle;
	priv->dev = dev;
	htc_handle->drv_priv = priv;
	FUNC0(hw, priv->dev);

	ret = FUNC2(priv);
	if (ret)
		goto err_free;

	priv->wmi = FUNC5(priv);
	if (!priv->wmi) {
		ret = -EINVAL;
		goto err_free;
	}

	ret = FUNC4(priv, devid, drv_info);
	if (ret)
		goto err_init;

	ret = FUNC3(priv, devid, product, drv_info);
	if (ret)
		goto err_init;

	return 0;

err_init:
	FUNC1(priv);
err_free:
	FUNC7(hw);
	return ret;
}