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
struct wl12xx_platform_data {int /*<<< orphan*/  use_eeprom; int /*<<< orphan*/  set_power; } ;
struct wl1251 {scalar_t__ irq; int /*<<< orphan*/  use_eeprom; int /*<<< orphan*/  set_power; int /*<<< orphan*/ * if_ops; struct spi_device* if_priv; } ;
struct TYPE_2__ {struct wl12xx_platform_data* platform_data; } ;
struct spi_device {int bits_per_word; scalar_t__ irq; TYPE_1__ dev; } ;
struct ieee80211_hw {struct wl1251* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_NAME ; 
 int ENODEV ; 
 int /*<<< orphan*/  IRQ_NOAUTOEN ; 
 int /*<<< orphan*/  IRQ_TYPE_EDGE_RISING ; 
 scalar_t__ FUNC0 (struct ieee80211_hw*) ; 
 int FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,struct wl1251*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC7 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wl1251*) ; 
 int /*<<< orphan*/  FUNC8 (struct spi_device*,struct wl1251*) ; 
 int FUNC9 (struct spi_device*) ; 
 struct ieee80211_hw* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int FUNC12 (struct wl1251*) ; 
 int /*<<< orphan*/  wl1251_irq ; 
 int /*<<< orphan*/  wl1251_spi_ops ; 

__attribute__((used)) static int FUNC13(struct spi_device *spi)
{
	struct wl12xx_platform_data *pdata;
	struct ieee80211_hw *hw;
	struct wl1251 *wl;
	int ret;

	pdata = spi->dev.platform_data;
	if (!pdata) {
		FUNC11("no platform data");
		return -ENODEV;
	}

	hw = FUNC10();
	if (FUNC0(hw))
		return FUNC1(hw);

	wl = hw->priv;

	FUNC2(hw, &spi->dev);
	FUNC8(spi, wl);
	wl->if_priv = spi;
	wl->if_ops = &wl1251_spi_ops;

	/* This is the only SPI value that we need to set here, the rest
	 * comes from the board-peripherals file */
	spi->bits_per_word = 32;

	ret = FUNC9(spi);
	if (ret < 0) {
		FUNC11("spi_setup failed");
		goto out_free;
	}

	wl->set_power = pdata->set_power;
	if (!wl->set_power) {
		FUNC11("set power function missing in platform data");
		return -ENODEV;
	}

	wl->irq = spi->irq;
	if (wl->irq < 0) {
		FUNC11("irq missing in platform data");
		return -ENODEV;
	}

	wl->use_eeprom = pdata->use_eeprom;

	FUNC6(wl->irq, IRQ_NOAUTOEN);
	ret = FUNC7(wl->irq, wl1251_irq, 0, DRIVER_NAME, wl);
	if (ret < 0) {
		FUNC11("request_irq() failed: %d", ret);
		goto out_free;
	}

	FUNC5(wl->irq, IRQ_TYPE_EDGE_RISING);

	ret = FUNC12(wl);
	if (ret)
		goto out_irq;

	return 0;

 out_irq:
	FUNC3(wl->irq, wl);

 out_free:
	FUNC4(hw);

	return ret;
}