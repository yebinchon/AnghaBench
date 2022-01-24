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
struct saa7134_fh {int /*<<< orphan*/  prio; struct saa7134_dev* dev; } ;
struct saa7134_dev {int /*<<< orphan*/  lock; int /*<<< orphan*/  prio; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int SAA7134_INPUT_MAX ; 
 TYPE_1__ FUNC0 (struct saa7134_dev*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct saa7134_dev*,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct file *file, void *priv, unsigned int i)
{
	struct saa7134_fh *fh = priv;
	struct saa7134_dev *dev = fh->dev;
	int err;

	err = FUNC3(&dev->prio, fh->prio);
	if (0 != err)
		return err;

	if (i >= SAA7134_INPUT_MAX)
		return -EINVAL;
	if (NULL == FUNC0(dev, i).name)
		return -EINVAL;
	FUNC1(&dev->lock);
	FUNC4(dev, i);
	FUNC2(&dev->lock);
	return 0;
}