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
struct v4l2_tuner {scalar_t__ index; int rangehigh; int signal; int /*<<< orphan*/  capability; int /*<<< orphan*/  type; int /*<<< orphan*/  name; } ;
struct file {int dummy; } ;
struct TYPE_4__ {scalar_t__ tuner_type; } ;
struct cx88_core {TYPE_2__ board; } ;
struct cx8802_fh {TYPE_1__* dev; } ;
struct TYPE_3__ {struct cx88_core* core; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MO_DEVICE_STATUS ; 
 scalar_t__ UNSET ; 
 int /*<<< orphan*/  V4L2_TUNER_ANALOG_TV ; 
 int /*<<< orphan*/  V4L2_TUNER_CAP_NORM ; 
 int /*<<< orphan*/  FUNC0 (struct cx88_core*,struct v4l2_tuner*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4 (struct file *file, void *priv,
				struct v4l2_tuner *t)
{
	struct cx88_core  *core = ((struct cx8802_fh *)priv)->dev->core;
	u32 reg;

	if (FUNC3(UNSET == core->board.tuner_type))
		return -EINVAL;
	if (0 != t->index)
		return -EINVAL;

	FUNC2(t->name, "Television");
	t->type       = V4L2_TUNER_ANALOG_TV;
	t->capability = V4L2_TUNER_CAP_NORM;
	t->rangehigh  = 0xffffffffUL;

	FUNC0(core ,t);
	reg = FUNC1(MO_DEVICE_STATUS);
	t->signal = (reg & (1<<5)) ? 0xffff : 0x0000;
	return 0;
}