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
struct saa7134_fh {struct saa7134_dev* dev; } ;
struct saa7134_dev {int /*<<< orphan*/  slock; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  RESOURCE_OVERLAY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct saa7134_fh*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct saa7134_dev*,struct saa7134_fh*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct saa7134_dev*,struct saa7134_fh*,int /*<<< orphan*/ ) ; 
 scalar_t__ saa7134_no_overlay ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct saa7134_dev*,struct saa7134_fh*) ; 
 int /*<<< orphan*/  FUNC7 (struct saa7134_dev*,struct saa7134_fh*) ; 

__attribute__((used)) static int FUNC8(struct file *file, void *f, unsigned int on)
{
	struct saa7134_fh *fh = f;
	struct saa7134_dev *dev = fh->dev;
	unsigned long flags;

	if (on) {
		if (saa7134_no_overlay > 0) {
			FUNC0("no_overlay\n");
			return -EINVAL;
		}

		if (!FUNC3(dev, fh, RESOURCE_OVERLAY))
			return -EBUSY;
		FUNC4(&dev->slock, flags);
		FUNC6(dev, fh);
		FUNC5(&dev->slock, flags);
	}
	if (!on) {
		if (!FUNC1(fh, RESOURCE_OVERLAY))
			return -EINVAL;
		FUNC4(&dev->slock, flags);
		FUNC7(dev, fh);
		FUNC5(&dev->slock, flags);
		FUNC2(dev, fh, RESOURCE_OVERLAY);
	}
	return 0;
}