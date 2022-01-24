#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_5__ {int* value; } ;
struct TYPE_6__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct cx88_core {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  reg_lock; struct cx88_core* core; } ;
typedef  TYPE_3__ snd_cx88_card_t ;

/* Variables and functions */
 int /*<<< orphan*/  AUD_VOL_CTL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 TYPE_3__* FUNC2 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol,
				       struct snd_ctl_elem_value *value)
{
	snd_cx88_card_t *chip = FUNC2(kcontrol);
	struct cx88_core *core = chip->core;
	u32 bit = kcontrol->private_value;
	int ret = 0;
	u32 vol;

	FUNC3(&chip->reg_lock);
	vol = FUNC0(AUD_VOL_CTL);
	if (value->value.integer.value[0] != !(vol & bit)) {
		vol ^= bit;
		FUNC1(AUD_VOL_CTL, vol);
		ret = 1;
	}
	FUNC4(&chip->reg_lock);
	return ret;
}