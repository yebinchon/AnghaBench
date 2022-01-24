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
struct v4l2_subdev {int dummy; } ;
struct CHIPSTATE {scalar_t__ mode; int prevmode; int /*<<< orphan*/  wt; scalar_t__ radio; struct v4l2_subdev sd; struct CHIPDESC* desc; } ;
struct CHIPDESC {int (* getmode ) (struct CHIPSTATE*) ;int /*<<< orphan*/  (* setmode ) (struct CHIPSTATE*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int V4L2_TUNER_MODE_LANG1 ; 
 int V4L2_TUNER_MODE_LANG1_LANG2 ; 
 int V4L2_TUNER_MODE_LANG2 ; 
 int V4L2_TUNER_MODE_MONO ; 
 int V4L2_TUNER_MODE_STEREO ; 
 int /*<<< orphan*/  debug ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (struct CHIPSTATE*) ; 
 int /*<<< orphan*/  FUNC7 (struct CHIPSTATE*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct CHIPSTATE*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct CHIPSTATE*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct CHIPSTATE*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct CHIPSTATE*,int) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*) ; 

__attribute__((used)) static int FUNC14(void *data)
{
	struct CHIPSTATE *chip = data;
	struct CHIPDESC  *desc = chip->desc;
	struct v4l2_subdev *sd = &chip->sd;
	int mode;

	FUNC13(1, debug, sd, "thread started\n");
	FUNC5();
	for (;;) {
		FUNC4(TASK_INTERRUPTIBLE);
		if (!FUNC0())
			FUNC3();
		FUNC4(TASK_RUNNING);
		FUNC12();
		if (FUNC0())
			break;
		FUNC13(1, debug, sd, "thread wakeup\n");

		/* don't do anything for radio or if mode != auto */
		if (chip->radio || chip->mode != 0)
			continue;

		/* have a look what's going on */
		mode = desc->getmode(chip);
		if (mode == chip->prevmode)
			continue;

		/* chip detected a new audio mode - set it */
		FUNC13(1, debug, sd, "thread checkmode\n");

		chip->prevmode = mode;

		if (mode & V4L2_TUNER_MODE_STEREO)
			desc->setmode(chip, V4L2_TUNER_MODE_STEREO);
		if (mode & V4L2_TUNER_MODE_LANG1_LANG2)
			desc->setmode(chip, V4L2_TUNER_MODE_STEREO);
		else if (mode & V4L2_TUNER_MODE_LANG1)
			desc->setmode(chip, V4L2_TUNER_MODE_LANG1);
		else if (mode & V4L2_TUNER_MODE_LANG2)
			desc->setmode(chip, V4L2_TUNER_MODE_LANG2);
		else
			desc->setmode(chip, V4L2_TUNER_MODE_MONO);

		/* schedule next check */
		FUNC1(&chip->wt, jiffies+FUNC2(2000));
	}

	FUNC13(1, debug, sd, "thread exiting\n");
	return 0;
}