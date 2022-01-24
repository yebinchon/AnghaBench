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
struct input_dev {int dummy; } ;
struct iforce_core_effect {scalar_t__* flags; int /*<<< orphan*/  mod2_chunk; int /*<<< orphan*/  mod1_chunk; } ;
struct iforce {struct iforce_core_effect* core_effects; } ;

/* Variables and functions */
 int /*<<< orphan*/  FF_MOD1_IS_USED ; 
 int /*<<< orphan*/  FF_MOD2_IS_USED ; 
 struct iforce* FUNC0 (struct input_dev*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static int FUNC3(struct input_dev *dev, int effect_id)
{
	struct iforce *iforce = FUNC0(dev);
	struct iforce_core_effect *core_effect = &iforce->core_effects[effect_id];
	int err = 0;

	if (FUNC2(FF_MOD1_IS_USED, core_effect->flags))
		err = FUNC1(&core_effect->mod1_chunk);

	if (!err && FUNC2(FF_MOD2_IS_USED, core_effect->flags))
		err = FUNC1(&core_effect->mod2_chunk);

	/* TODO: remember to change that if more FF_MOD* bits are added */
	core_effect->flags[0] = 0;

	return err;
}