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
struct wl12xx_platform_data {int /*<<< orphan*/  use_eeprom; scalar_t__ irq; int /*<<< orphan*/  set_power; struct wl1251* priv; } ;
struct wl1251_sdio {struct sdio_func* func; } ;
struct wl1251 {scalar_t__ irq; int /*<<< orphan*/  use_eeprom; int /*<<< orphan*/  set_power; TYPE_1__* if_ops; struct wl1251_sdio* if_priv; } ;
struct sdio_func {int /*<<< orphan*/  dev; } ;
struct sdio_device_id {int dummy; } ;
typedef  struct ieee80211_hw {int /*<<< orphan*/  use_eeprom; scalar_t__ irq; int /*<<< orphan*/  set_power; struct wl1251* priv; } const ieee80211_hw ;
struct TYPE_2__ {int /*<<< orphan*/  disable_irq; int /*<<< orphan*/  enable_irq; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQ_NOAUTOEN ; 
 int /*<<< orphan*/  IRQ_TYPE_EDGE_RISING ; 
 scalar_t__ FUNC0 (struct wl12xx_platform_data const*) ; 
 int FUNC1 (struct wl12xx_platform_data const*) ; 
 int /*<<< orphan*/  FUNC2 (struct wl12xx_platform_data const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,struct wl1251*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct wl1251_sdio*) ; 
 struct wl1251_sdio* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct wl1251*) ; 
 int /*<<< orphan*/  FUNC10 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC11 (struct sdio_func*) ; 
 int FUNC12 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC13 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC14 (struct sdio_func*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct sdio_func*,struct wl1251*) ; 
 struct wl12xx_platform_data* FUNC16 () ; 
 int /*<<< orphan*/  wl1251_disable_line_irq ; 
 int /*<<< orphan*/  wl1251_enable_line_irq ; 
 int /*<<< orphan*/  FUNC17 (char*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct wl1251*) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int FUNC20 (struct wl1251*) ; 
 int /*<<< orphan*/  wl1251_line_irq ; 
 int /*<<< orphan*/  wl1251_sdio_disable_irq ; 
 int /*<<< orphan*/  wl1251_sdio_enable_irq ; 
 TYPE_1__ wl1251_sdio_ops ; 
 struct wl12xx_platform_data* FUNC21 () ; 

__attribute__((used)) static int FUNC22(struct sdio_func *func,
			     const struct sdio_device_id *id)
{
	int ret;
	struct wl1251 *wl;
	struct ieee80211_hw *hw;
	struct wl1251_sdio *wl_sdio;
	const struct wl12xx_platform_data *wl12xx_board_data;

	hw = FUNC16();
	if (FUNC0(hw))
		return FUNC1(hw);

	wl = hw->priv;

	wl_sdio = FUNC7(sizeof(*wl_sdio), GFP_KERNEL);
	if (wl_sdio == NULL) {
		ret = -ENOMEM;
		goto out_free_hw;
	}

	FUNC10(func);
	ret = FUNC12(func);
	if (ret)
		goto release;

	FUNC14(func, 512);
	FUNC13(func);

	FUNC2(hw, &func->dev);
	wl_sdio->func = func;
	wl->if_priv = wl_sdio;
	wl->if_ops = &wl1251_sdio_ops;

	wl12xx_board_data = FUNC21();
	if (!FUNC0(wl12xx_board_data)) {
		wl->set_power = wl12xx_board_data->set_power;
		wl->irq = wl12xx_board_data->irq;
		wl->use_eeprom = wl12xx_board_data->use_eeprom;
	}

	if (wl->irq) {
		FUNC5(wl->irq, IRQ_NOAUTOEN);
		ret = FUNC9(wl->irq, wl1251_line_irq, 0, "wl1251", wl);
		if (ret < 0) {
			FUNC17("request_irq() failed: %d", ret);
			goto disable;
		}

		FUNC4(wl->irq, IRQ_TYPE_EDGE_RISING);

		wl1251_sdio_ops.enable_irq = wl1251_enable_line_irq;
		wl1251_sdio_ops.disable_irq = wl1251_disable_line_irq;

		FUNC19("using dedicated interrupt line");
	} else {
		wl1251_sdio_ops.enable_irq = wl1251_sdio_enable_irq;
		wl1251_sdio_ops.disable_irq = wl1251_sdio_disable_irq;

		FUNC19("using SDIO interrupt");
	}

	ret = FUNC20(wl);
	if (ret)
		goto out_free_irq;

	FUNC15(func, wl);

	/* Tell PM core that we don't need the card to be powered now */
	FUNC8(&func->dev);

	return ret;

out_free_irq:
	if (wl->irq)
		FUNC3(wl->irq, wl);
disable:
	FUNC10(func);
	FUNC11(func);
release:
	FUNC13(func);
	FUNC6(wl_sdio);
out_free_hw:
	FUNC18(wl);
	return ret;
}