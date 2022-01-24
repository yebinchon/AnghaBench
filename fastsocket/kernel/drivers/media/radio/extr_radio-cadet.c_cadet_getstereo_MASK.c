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
struct cadet {scalar_t__ curtuner; int /*<<< orphan*/  lock; scalar_t__ io; } ;

/* Variables and functions */
 int V4L2_TUNER_SUB_MONO ; 
 int V4L2_TUNER_SUB_STEREO ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct cadet *dev)
{
	int ret = V4L2_TUNER_SUB_MONO;

	if (dev->curtuner != 0)	/* Only FM has stereo capability! */
		return V4L2_TUNER_SUB_MONO;

	FUNC1(&dev->lock);
	FUNC3(7, dev->io);          /* Select tuner control */
	if ((FUNC0(dev->io + 1) & 0x40) == 0)
		ret = V4L2_TUNER_SUB_STEREO;
	FUNC2(&dev->lock);
	return ret;
}