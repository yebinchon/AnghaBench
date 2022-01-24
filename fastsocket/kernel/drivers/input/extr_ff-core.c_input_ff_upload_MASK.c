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
struct input_dev {int /*<<< orphan*/  event_lock; int /*<<< orphan*/  ffbit; int /*<<< orphan*/  evbit; struct ff_device* ff; } ;
struct file {int dummy; } ;
struct TYPE_3__ {scalar_t__ waveform; } ;
struct TYPE_4__ {TYPE_1__ periodic; } ;
struct ff_effect {scalar_t__ type; int id; TYPE_2__ u; } ;
struct ff_device {int max_effects; int (* upload ) (struct input_dev*,struct ff_effect*,struct ff_effect*) ;int /*<<< orphan*/  mutex; struct file** effect_owners; struct ff_effect* effects; int /*<<< orphan*/  ffbit; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOSPC ; 
 int ENOSYS ; 
 scalar_t__ EV_FF ; 
 scalar_t__ FF_EFFECT_MAX ; 
 scalar_t__ FF_EFFECT_MIN ; 
 scalar_t__ FF_PERIODIC ; 
 scalar_t__ FF_WAVEFORM_MAX ; 
 scalar_t__ FF_WAVEFORM_MIN ; 
 int FUNC0 (struct ff_device*,int,struct file*) ; 
 int /*<<< orphan*/  FUNC1 (struct ff_effect*,struct ff_effect*) ; 
 int FUNC2 (struct ff_device*,struct ff_effect*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct input_dev*,struct ff_effect*,struct ff_effect*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 

int FUNC10(struct input_dev *dev, struct ff_effect *effect,
		    struct file *file)
{
	struct ff_device *ff = dev->ff;
	struct ff_effect *old;
	int ret = 0;
	int id;

	if (!FUNC9(EV_FF, dev->evbit))
		return -ENOSYS;

	if (effect->type < FF_EFFECT_MIN || effect->type > FF_EFFECT_MAX ||
	    !FUNC9(effect->type, dev->ffbit)) {
		FUNC3("invalid or not supported effect type in upload");
		return -EINVAL;
	}

	if (effect->type == FF_PERIODIC &&
	    (effect->u.periodic.waveform < FF_WAVEFORM_MIN ||
	     effect->u.periodic.waveform > FF_WAVEFORM_MAX ||
	     !FUNC9(effect->u.periodic.waveform, dev->ffbit))) {
		FUNC3("invalid or not supported wave form in upload");
		return -EINVAL;
	}

	if (!FUNC9(effect->type, ff->ffbit)) {
		ret = FUNC2(ff, effect);
		if (ret)
			return ret;
	}

	FUNC4(&ff->mutex);

	if (effect->id == -1) {
		for (id = 0; id < ff->max_effects; id++)
		     if (!ff->effect_owners[id])
			break;

		if (id >= ff->max_effects) {
			ret = -ENOSPC;
			goto out;
		}

		effect->id = id;
		old = NULL;

	} else {
		id = effect->id;

		ret = FUNC0(ff, id, file);
		if (ret)
			goto out;

		old = &ff->effects[id];

		if (!FUNC1(effect, old)) {
			ret = -EINVAL;
			goto out;
		}
	}

	ret = ff->upload(dev, effect, old);
	if (ret)
		goto out;

	FUNC6(&dev->event_lock);
	ff->effects[id] = *effect;
	ff->effect_owners[id] = file;
	FUNC7(&dev->event_lock);

 out:
	FUNC5(&ff->mutex);
	return ret;
}