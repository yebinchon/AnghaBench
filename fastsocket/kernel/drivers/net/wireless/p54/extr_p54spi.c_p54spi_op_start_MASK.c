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
struct p54s_priv {scalar_t__ fw_state; int /*<<< orphan*/  mutex; TYPE_1__* spi; int /*<<< orphan*/  fw_comp; } ;
struct ieee80211_hw {struct p54s_priv* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINTR ; 
 scalar_t__ FW_STATE_BOOTING ; 
 scalar_t__ FW_STATE_READY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 unsigned long FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct p54s_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct p54s_priv*) ; 
 int FUNC7 (struct ieee80211_hw*) ; 
 unsigned long FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct ieee80211_hw *dev)
{
	struct p54s_priv *priv = dev->priv;
	unsigned long timeout;
	int ret = 0;

	if (FUNC3(&priv->mutex)) {
		ret = -EINTR;
		goto out;
	}

	priv->fw_state = FW_STATE_BOOTING;

	FUNC6(priv);

	ret = FUNC7(dev);
	if (ret < 0) {
		FUNC5(priv);
		goto out_unlock;
	}

	FUNC4(&priv->mutex);

	timeout = FUNC2(2000);
	timeout = FUNC8(&priv->fw_comp,
							    timeout);
	if (!timeout) {
		FUNC1(&priv->spi->dev, "firmware boot failed");
		FUNC5(priv);
		ret = -1;
		goto out;
	}

	if (FUNC3(&priv->mutex)) {
		ret = -EINTR;
		FUNC5(priv);
		goto out;
	}

	FUNC0(priv->fw_state != FW_STATE_READY);

out_unlock:
	FUNC4(&priv->mutex);

out:
	return ret;
}