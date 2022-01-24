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
typedef  int u16 ;
struct nouveau_timer {int /*<<< orphan*/  (* alarm ) (struct nouveau_timer*,int,TYPE_2__*) ;} ;
struct nouveau_therm_priv {int dummy; } ;
struct nouveau_therm {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  head; } ;
struct TYPE_3__ {int bump_period; int slow_down_period; int /*<<< orphan*/  max_duty; int /*<<< orphan*/  min_duty; } ;
struct nouveau_fan {int percent; int (* get ) (struct nouveau_therm*) ;int (* set ) (struct nouveau_therm*,int) ;int /*<<< orphan*/  lock; TYPE_2__ alarm; TYPE_1__ bios; struct nouveau_therm* parent; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct nouveau_timer* FUNC5 (struct nouveau_therm_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct nouveau_therm*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC9 (struct nouveau_therm*) ; 
 int FUNC10 (struct nouveau_therm*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct nouveau_timer*,int,TYPE_2__*) ; 
 int /*<<< orphan*/  u8 ; 

__attribute__((used)) static int
FUNC12(struct nouveau_fan *fan, bool immediate, int target)
{
	struct nouveau_therm *therm = fan->parent;
	struct nouveau_therm_priv *priv = (void *)therm;
	struct nouveau_timer *ptimer = FUNC5(priv);
	unsigned long flags;
	int ret = 0;
	int duty;

	/* update target fan speed, restricting to allowed range */
	FUNC7(&fan->lock, flags);
	if (target < 0)
		target = fan->percent;
	target = FUNC2(u8, target, fan->bios.min_duty);
	target = FUNC4(u8, target, fan->bios.max_duty);
	if (fan->percent != target) {
		FUNC6(therm, "FAN target: %d\n", target);
		fan->percent = target;
	}

	/* check that we're not already at the target duty cycle */
	duty = fan->get(therm);
	if (duty == target)
		goto done;

	/* smooth out the fanspeed increase/decrease */
	if (!immediate && duty >= 0) {
		/* the constant "3" is a rough approximation taken from
		 * nvidia's behaviour.
		 * it is meant to bump the fan speed more incrementally
		 */
		if (duty < target)
			duty = FUNC3(duty + 3, target);
		else if (duty > target)
			duty = FUNC1(duty - 3, target);
	} else {
		duty = target;
	}

	FUNC6(therm, "FAN update: %d\n", duty);
	ret = fan->set(therm, duty);
	if (ret)
		goto done;

	/* schedule next fan update, if not at target speed already */
	if (FUNC0(&fan->alarm.head) && target != duty) {
		u16 bump_period = fan->bios.bump_period;
		u16 slow_down_period = fan->bios.slow_down_period;
		u64 delay;

		if (duty > target)
			delay = slow_down_period;
		else if (duty == target)
			delay = FUNC3(bump_period, slow_down_period) ;
		else
			delay = bump_period;

		ptimer->alarm(ptimer, delay * 1000 * 1000, &fan->alarm);
	}

done:
	FUNC8(&fan->lock, flags);
	return ret;
}