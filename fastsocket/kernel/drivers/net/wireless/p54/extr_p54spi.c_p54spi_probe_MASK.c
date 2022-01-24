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
struct spi_device {int bits_per_word; int max_speed_hz; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx; int /*<<< orphan*/  stop; int /*<<< orphan*/  open; } ;
struct p54s_priv {struct ieee80211_hw* hw; struct spi_device* spi; TYPE_1__ common; int /*<<< orphan*/  tx_lock; int /*<<< orphan*/  mutex; int /*<<< orphan*/  tx_pending; int /*<<< orphan*/  fw_comp; int /*<<< orphan*/  work; } ;
struct ieee80211_hw {struct p54s_priv* priv; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQF_DISABLED ; 
 int /*<<< orphan*/  IRQ_TYPE_EDGE_RISING ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct spi_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct ieee80211_hw*) ; 
 struct ieee80211_hw* FUNC15 (int) ; 
 int FUNC16 (struct ieee80211_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  p54spi_gpio_irq ; 
 int /*<<< orphan*/  p54spi_gpio_power ; 
 int /*<<< orphan*/  p54spi_interrupt ; 
 int /*<<< orphan*/  p54spi_op_start ; 
 int /*<<< orphan*/  p54spi_op_stop ; 
 int /*<<< orphan*/  p54spi_op_tx ; 
 int FUNC17 (struct ieee80211_hw*) ; 
 int FUNC18 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  p54spi_work ; 
 int FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct spi_device*) ; 
 int /*<<< orphan*/  FUNC20 (struct spi_device*,struct p54s_priv*) ; 
 int FUNC21 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC23(struct spi_device *spi)
{
	struct p54s_priv *priv = NULL;
	struct ieee80211_hw *hw;
	int ret = -EINVAL;

	hw = FUNC15(sizeof(*priv));
	if (!hw) {
		FUNC3(&spi->dev, "could not alloc ieee80211_hw");
		return -ENOMEM;
	}

	priv = hw->priv;
	priv->hw = hw;
	FUNC20(spi, priv);
	priv->spi = spi;

	spi->bits_per_word = 16;
	spi->max_speed_hz = 24000000;

	ret = FUNC21(spi);
	if (ret < 0) {
		FUNC3(&priv->spi->dev, "spi_setup failed");
		goto err_free;
	}

	ret = FUNC9(p54spi_gpio_power, "p54spi power");
	if (ret < 0) {
		FUNC3(&priv->spi->dev, "power GPIO request failed: %d", ret);
		goto err_free;
	}

	ret = FUNC9(p54spi_gpio_irq, "p54spi irq");
	if (ret < 0) {
		FUNC3(&priv->spi->dev, "irq GPIO request failed: %d", ret);
		goto err_free_gpio_power;
	}

	FUNC7(p54spi_gpio_power, 0);
	FUNC6(p54spi_gpio_irq);

	ret = FUNC19(FUNC10(p54spi_gpio_irq),
			  p54spi_interrupt, IRQF_DISABLED, "p54spi",
			  priv->spi);
	if (ret < 0) {
		FUNC3(&priv->spi->dev, "request_irq() failed");
		goto err_free_gpio_irq;
	}

	FUNC12(FUNC10(p54spi_gpio_irq), IRQ_TYPE_EDGE_RISING);

	FUNC4(FUNC10(p54spi_gpio_irq));

	FUNC1(&priv->work, p54spi_work);
	FUNC11(&priv->fw_comp);
	FUNC0(&priv->tx_pending);
	FUNC13(&priv->mutex);
	FUNC22(&priv->tx_lock);
	FUNC2(hw, &spi->dev);
	priv->common.open = p54spi_op_start;
	priv->common.stop = p54spi_op_stop;
	priv->common.tx = p54spi_op_tx;

	ret = FUNC18(hw);
	if (ret < 0)
		goto err_free_common;

	ret = FUNC17(hw);
	if (ret)
		goto err_free_common;

	ret = FUNC16(hw, &priv->spi->dev);
	if (ret)
		goto err_free_common;

	return 0;

err_free_common:
	FUNC5(FUNC10(p54spi_gpio_irq), spi);
err_free_gpio_irq:
	FUNC8(p54spi_gpio_irq);
err_free_gpio_power:
	FUNC8(p54spi_gpio_power);
err_free:
	FUNC14(priv->hw);
	return ret;
}