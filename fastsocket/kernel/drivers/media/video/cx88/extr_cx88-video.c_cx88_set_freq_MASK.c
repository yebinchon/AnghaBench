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
struct v4l2_frequency {scalar_t__ tuner; int /*<<< orphan*/  frequency; } ;
struct TYPE_2__ {scalar_t__ tuner_type; } ;
struct cx88_core {int /*<<< orphan*/  lock; int /*<<< orphan*/  freq; TYPE_1__ board; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ UNSET ; 
 int /*<<< orphan*/  FUNC0 (struct cx88_core*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_frequency*) ; 
 int /*<<< orphan*/  FUNC1 (struct cx88_core*) ; 
 int /*<<< orphan*/  FUNC2 (struct cx88_core*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  s_frequency ; 
 int /*<<< orphan*/  tuner ; 
 scalar_t__ FUNC6 (int) ; 

int FUNC7 (struct cx88_core  *core,
				struct v4l2_frequency *f)
{
	if (FUNC6(UNSET == core->board.tuner_type))
		return -EINVAL;
	if (FUNC6(f->tuner != 0))
		return -EINVAL;

	FUNC4(&core->lock);
	core->freq = f->frequency;
	FUNC1(core);
	FUNC0(core, tuner, s_frequency, f);

	/* When changing channels it is required to reset TVAUDIO */
	FUNC3 (10);
	FUNC2(core);

	FUNC5(&core->lock);

	return 0;
}