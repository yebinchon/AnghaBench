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
struct ml_device {int (* play_effect ) (struct input_dev*,void*,struct ff_effect*) ;int gain; TYPE_1__* states; int /*<<< orphan*/  timer; void* private; struct input_dev* dev; } ;
struct input_dev {int /*<<< orphan*/  ffbit; struct ff_device* ff; } ;
struct ff_device {int /*<<< orphan*/ * effects; int /*<<< orphan*/  ffbit; int /*<<< orphan*/  destroy; int /*<<< orphan*/  set_gain; int /*<<< orphan*/  playback; int /*<<< orphan*/  upload; struct ml_device* private; } ;
struct TYPE_2__ {int /*<<< orphan*/ * effect; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FF_GAIN ; 
 int FF_MEMLESS_EFFECTS ; 
 int /*<<< orphan*/  FF_PERIODIC ; 
 int /*<<< orphan*/  FF_RUMBLE ; 
 int /*<<< orphan*/  FF_SINE ; 
 int /*<<< orphan*/  FF_SQUARE ; 
 int /*<<< orphan*/  FF_TRIANGLE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct input_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ml_device*) ; 
 struct ml_device* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ml_effect_timer ; 
 int /*<<< orphan*/  ml_ff_destroy ; 
 int /*<<< orphan*/  ml_ff_playback ; 
 int /*<<< orphan*/  ml_ff_set_gain ; 
 int /*<<< orphan*/  ml_ff_upload ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(struct input_dev *dev, void *data,
		int (*play_effect)(struct input_dev *, void *, struct ff_effect *))
{
	struct ml_device *ml;
	struct ff_device *ff;
	int error;
	int i;

	ml = FUNC2(sizeof(struct ml_device), GFP_KERNEL);
	if (!ml)
		return -ENOMEM;

	ml->dev = dev;
	ml->private = data;
	ml->play_effect = play_effect;
	ml->gain = 0xffff;
	FUNC4(&ml->timer, ml_effect_timer, (unsigned long)dev);

	FUNC3(FF_GAIN, dev->ffbit);

	error = FUNC0(dev, FF_MEMLESS_EFFECTS);
	if (error) {
		FUNC1(ml);
		return error;
	}

	ff = dev->ff;
	ff->private = ml;
	ff->upload = ml_ff_upload;
	ff->playback = ml_ff_playback;
	ff->set_gain = ml_ff_set_gain;
	ff->destroy = ml_ff_destroy;

	/* we can emulate periodic effects with RUMBLE */
	if (FUNC5(FF_RUMBLE, ff->ffbit)) {
		FUNC3(FF_PERIODIC, dev->ffbit);
		FUNC3(FF_SINE, dev->ffbit);
		FUNC3(FF_TRIANGLE, dev->ffbit);
		FUNC3(FF_SQUARE, dev->ffbit);
	}

	for (i = 0; i < FF_MEMLESS_EFFECTS; i++)
		ml->states[i].effect = &ff->effects[i];

	return 0;
}