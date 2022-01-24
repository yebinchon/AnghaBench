#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int v4l2_std_id ;
struct saa7134_fh {int /*<<< orphan*/  prio; } ;
struct saa7134_dev {int /*<<< orphan*/  lock; int /*<<< orphan*/  slock; int /*<<< orphan*/  prio; } ;
struct TYPE_3__ {int id; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  RESOURCE_OVERLAY ; 
 unsigned int TVNORMS ; 
 int V4L2_STD_SECAM ; 
 int V4L2_STD_SECAM_DK ; 
 int V4L2_STD_SECAM_L ; 
 int V4L2_STD_SECAM_LC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct saa7134_fh*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct saa7134_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct saa7134_dev*) ; 
 char* secam ; 
 int /*<<< orphan*/  FUNC5 (struct saa7134_dev*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct saa7134_dev*,struct saa7134_fh*) ; 
 int /*<<< orphan*/  FUNC9 (struct saa7134_dev*,struct saa7134_fh*) ; 
 TYPE_1__* tvnorms ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC11(struct saa7134_dev *dev, struct saa7134_fh *fh, v4l2_std_id *id)
{
	unsigned long flags;
	unsigned int i;
	v4l2_std_id fixup;
	int err;

	/* When called from the empress code fh == NULL.
	   That needs to be fixed somehow, but for now this is
	   good enough. */
	if (fh) {
		err = FUNC10(&dev->prio, fh->prio);
		if (0 != err)
			return err;
	} else if (FUNC3(dev, RESOURCE_OVERLAY)) {
		/* Don't change the std from the mpeg device
		   if overlay is active. */
		return -EBUSY;
	}

	for (i = 0; i < TVNORMS; i++)
		if (*id == tvnorms[i].id)
			break;

	if (i == TVNORMS)
		for (i = 0; i < TVNORMS; i++)
			if (*id & tvnorms[i].id)
				break;
	if (i == TVNORMS)
		return -EINVAL;

	if ((*id & V4L2_STD_SECAM) && (secam[0] != '-')) {
		if (secam[0] == 'L' || secam[0] == 'l') {
			if (secam[1] == 'C' || secam[1] == 'c')
				fixup = V4L2_STD_SECAM_LC;
			else
				fixup = V4L2_STD_SECAM_L;
		} else {
			if (secam[0] == 'D' || secam[0] == 'd')
				fixup = V4L2_STD_SECAM_DK;
			else
				fixup = V4L2_STD_SECAM;
		}
		for (i = 0; i < TVNORMS; i++) {
			if (fixup == tvnorms[i].id)
				break;
		}
		if (i == TVNORMS)
			return -EINVAL;
	}

	*id = tvnorms[i].id;

	FUNC0(&dev->lock);
	if (fh && FUNC2(fh, RESOURCE_OVERLAY)) {
		FUNC6(&dev->slock, flags);
		FUNC9(dev, fh);
		FUNC7(&dev->slock, flags);

		FUNC5(dev, &tvnorms[i]);

		FUNC6(&dev->slock, flags);
		FUNC8(dev, fh);
		FUNC7(&dev->slock, flags);
	} else
		FUNC5(dev, &tvnorms[i]);

	FUNC4(dev);
	FUNC1(&dev->lock);
	return 0;
}