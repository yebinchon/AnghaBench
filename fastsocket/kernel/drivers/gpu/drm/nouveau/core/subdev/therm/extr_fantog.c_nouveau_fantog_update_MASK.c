#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct nouveau_timer {int /*<<< orphan*/  (* alarm ) (struct nouveau_timer*,int,TYPE_2__*) ;} ;
struct nouveau_therm_priv {int dummy; } ;
struct nouveau_gpio {int /*<<< orphan*/  (* set ) (struct nouveau_gpio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ;int /*<<< orphan*/  (* get ) (struct nouveau_gpio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  head; } ;
struct TYPE_3__ {scalar_t__ parent; } ;
struct nouveau_fantog_priv {int percent; int period_us; int /*<<< orphan*/  lock; TYPE_2__ alarm; TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCB_GPIO_FAN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct nouveau_gpio* FUNC1 (struct nouveau_therm_priv*) ; 
 struct nouveau_timer* FUNC2 (struct nouveau_therm_priv*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct nouveau_gpio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nouveau_gpio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct nouveau_timer*,int,TYPE_2__*) ; 

__attribute__((used)) static void
FUNC8(struct nouveau_fantog_priv *priv, int percent)
{
	struct nouveau_therm_priv *tpriv = (void *)priv->base.parent;
	struct nouveau_timer *ptimer = FUNC2(tpriv);
	struct nouveau_gpio *gpio = FUNC1(tpriv);
	unsigned long flags;
	int duty;

	FUNC3(&priv->lock, flags);
	if (percent < 0)
		percent = priv->percent;
	priv->percent = percent;

	duty = !gpio->get(gpio, 0, DCB_GPIO_FAN, 0xff);
	gpio->set(gpio, 0, DCB_GPIO_FAN, 0xff, duty);

	if (FUNC0(&priv->alarm.head) && percent != (duty * 100)) {
		u64 next_change = (percent * priv->period_us) / 100;
		if (!duty)
			next_change = priv->period_us - next_change;
		ptimer->alarm(ptimer, next_change * 1000, &priv->alarm);
	}
	FUNC4(&priv->lock, flags);
}