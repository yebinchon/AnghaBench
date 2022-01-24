#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct nouveau_timer {int /*<<< orphan*/  (* alarm ) (struct nouveau_timer*,unsigned long long,TYPE_3__*) ;} ;
struct TYPE_6__ {int /*<<< orphan*/  head; } ;
struct nouveau_therm_priv {int mode; int /*<<< orphan*/  lock; TYPE_3__ alarm; TYPE_2__* fan; } ;
struct nouveau_therm {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  nr_fan_trip; } ;
struct TYPE_5__ {TYPE_1__ bios; } ;

/* Variables and functions */
#define  NOUVEAU_THERM_CTRL_AUTO 130 
#define  NOUVEAU_THERM_CTRL_MANUAL 129 
#define  NOUVEAU_THERM_CTRL_NONE 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct nouveau_therm*) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_therm*,int,int) ; 
 int FUNC3 (struct nouveau_therm*) ; 
 int FUNC4 (struct nouveau_therm*) ; 
 struct nouveau_timer* FUNC5 (struct nouveau_therm*) ; 
 int /*<<< orphan*/  FUNC6 (struct nouveau_therm*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct nouveau_timer*,unsigned long long,TYPE_3__*) ; 

__attribute__((used)) static void
FUNC10(struct nouveau_therm *therm, int mode)
{
	struct nouveau_timer *ptimer = FUNC5(therm);
	struct nouveau_therm_priv *priv = (void *)therm;
	unsigned long flags;
	int duty;

	FUNC7(&priv->lock, flags);
	if (mode < 0)
		mode = priv->mode;
	priv->mode = mode;

	switch (mode) {
	case NOUVEAU_THERM_CTRL_MANUAL:
		duty = FUNC1(therm);
		if (duty < 0)
			duty = 100;
		break;
	case NOUVEAU_THERM_CTRL_AUTO:
		if (priv->fan->bios.nr_fan_trip)
			duty = FUNC4(therm);
		else
			duty = FUNC3(therm);
		break;
	case NOUVEAU_THERM_CTRL_NONE:
	default:
		goto done;
	}

	FUNC6(therm, "FAN target request: %d%%\n", duty);
	FUNC2(therm, (mode != NOUVEAU_THERM_CTRL_AUTO), duty);

done:
	if (FUNC0(&priv->alarm.head) && (mode == NOUVEAU_THERM_CTRL_AUTO))
		ptimer->alarm(ptimer, 1000000000ULL, &priv->alarm);
	FUNC8(&priv->lock, flags);
}