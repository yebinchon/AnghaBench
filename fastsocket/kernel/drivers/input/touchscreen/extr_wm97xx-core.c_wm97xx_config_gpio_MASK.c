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
struct wm97xx {int /*<<< orphan*/  codec_mutex; } ;
typedef  enum wm97xx_gpio_wake { ____Placeholder_wm97xx_gpio_wake } wm97xx_gpio_wake ;
typedef  enum wm97xx_gpio_sticky { ____Placeholder_wm97xx_gpio_sticky } wm97xx_gpio_sticky ;
typedef  enum wm97xx_gpio_pol { ____Placeholder_wm97xx_gpio_pol } wm97xx_gpio_pol ;
typedef  enum wm97xx_gpio_dir { ____Placeholder_wm97xx_gpio_dir } wm97xx_gpio_dir ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_GPIO_CFG ; 
 int /*<<< orphan*/  AC97_GPIO_POLARITY ; 
 int /*<<< orphan*/  AC97_GPIO_STICKY ; 
 int /*<<< orphan*/  AC97_GPIO_WAKEUP ; 
 int WM97XX_GPIO_IN ; 
 int WM97XX_GPIO_POL_HIGH ; 
 int WM97XX_GPIO_STICKY ; 
 int WM97XX_GPIO_WAKE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct wm97xx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wm97xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct wm97xx *wm, u32 gpio, enum wm97xx_gpio_dir dir,
		   enum wm97xx_gpio_pol pol, enum wm97xx_gpio_sticky sticky,
		   enum wm97xx_gpio_wake wake)
{
	u16 reg;

	FUNC0(&wm->codec_mutex);
	reg = FUNC2(wm, AC97_GPIO_POLARITY);

	if (pol == WM97XX_GPIO_POL_HIGH)
		reg |= gpio;
	else
		reg &= ~gpio;

	FUNC3(wm, AC97_GPIO_POLARITY, reg);
	reg = FUNC2(wm, AC97_GPIO_STICKY);

	if (sticky == WM97XX_GPIO_STICKY)
		reg |= gpio;
	else
		reg &= ~gpio;

	FUNC3(wm, AC97_GPIO_STICKY, reg);
	reg = FUNC2(wm, AC97_GPIO_WAKEUP);

	if (wake == WM97XX_GPIO_WAKE)
		reg |= gpio;
	else
		reg &= ~gpio;

	FUNC3(wm, AC97_GPIO_WAKEUP, reg);
	reg = FUNC2(wm, AC97_GPIO_CFG);

	if (dir == WM97XX_GPIO_IN)
		reg |= gpio;
	else
		reg &= ~gpio;

	FUNC3(wm, AC97_GPIO_CFG, reg);
	FUNC1(&wm->codec_mutex);
}