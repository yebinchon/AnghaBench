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
struct ivtv_open_id {struct ivtv* itv; } ;
struct ivtv {unsigned int nof_inputs; unsigned int active_input; TYPE_2__* card; int /*<<< orphan*/  audio_input; int /*<<< orphan*/  capturing; } ;
struct file {int dummy; } ;
struct TYPE_4__ {TYPE_1__* video_inputs; } ;
struct TYPE_3__ {int /*<<< orphan*/  audio_index; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ivtv*) ; 
 int /*<<< orphan*/  FUNC3 (struct ivtv*) ; 
 int /*<<< orphan*/  FUNC4 (struct ivtv*) ; 
 int /*<<< orphan*/  FUNC5 (struct ivtv*) ; 

int FUNC6(struct file *file, void *fh, unsigned int inp)
{
	struct ivtv *itv = ((struct ivtv_open_id *)fh)->itv;

	if (inp < 0 || inp >= itv->nof_inputs)
		return -EINVAL;

	if (inp == itv->active_input) {
		FUNC0("Input unchanged\n");
		return 0;
	}

	if (FUNC1(&itv->capturing) > 0) {
		return -EBUSY;
	}

	FUNC0("Changing input from %d to %d\n",
			itv->active_input, inp);

	itv->active_input = inp;
	/* Set the audio input to whatever is appropriate for the
	   input type. */
	itv->audio_input = itv->card->video_inputs[inp].audio_index;

	/* prevent others from messing with the streams until
	   we're finished changing inputs. */
	FUNC3(itv);
	FUNC5(itv);
	FUNC2(itv);
	FUNC4(itv);

	return 0;
}