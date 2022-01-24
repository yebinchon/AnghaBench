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
typedef  int u32 ;
struct nouveau_therm_priv {scalar_t__ fan; } ;
struct nouveau_therm {int (* pwm_get ) (struct nouveau_therm*,int /*<<< orphan*/ ,int*,int*) ;} ;
struct nouveau_gpio {int (* get ) (struct nouveau_gpio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_3__ {int* log; int /*<<< orphan*/  line; int /*<<< orphan*/  func; } ;
struct nouveau_fanpwm_priv {TYPE_1__ func; } ;
struct TYPE_4__ {int card_type; } ;

/* Variables and functions */
 int NV_40 ; 
 int FUNC0 (int,int) ; 
 struct nouveau_gpio* FUNC1 (struct nouveau_therm*) ; 
 TYPE_2__* FUNC2 (struct nouveau_therm*) ; 
 int FUNC3 (struct nouveau_therm*,int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC4 (struct nouveau_gpio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct nouveau_therm *therm)
{
	struct nouveau_therm_priv *tpriv = (void *)therm;
	struct nouveau_fanpwm_priv *priv = (void *)tpriv->fan;
	struct nouveau_gpio *gpio = FUNC1(therm);
	int card_type = FUNC2(therm)->card_type;
	u32 divs, duty;
	int ret;

	ret = therm->pwm_get(therm, priv->func.line, &divs, &duty);
	if (ret == 0 && divs) {
		divs = FUNC0(divs, duty);
		if (card_type <= NV_40 || (priv->func.log[0] & 1))
			duty = divs - duty;
		return (duty * 100) / divs;
	}

	return gpio->get(gpio, 0, priv->func.func, priv->func.line) * 100;
}