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
struct file {struct cx8802_fh* private_data; } ;
struct cx8802_fh {int /*<<< orphan*/  mpegq; struct cx8802_dev* dev; } ;
struct cx8802_driver {int /*<<< orphan*/  (* request_release ) (struct cx8802_driver*) ;} ;
struct cx8802_dev {TYPE_1__* core; scalar_t__ mpeg_active; } ;
struct TYPE_2__ {int /*<<< orphan*/  mpeg_users; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CX88_MPEG_BLACKBIRD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct cx8802_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct cx8802_dev*) ; 
 struct cx8802_driver* FUNC4 (struct cx8802_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cx8802_fh*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct cx8802_driver*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct file *file)
{
	struct cx8802_fh  *fh  = file->private_data;
	struct cx8802_dev *dev = fh->dev;
	struct cx8802_driver *drv = NULL;

	if (dev->mpeg_active && FUNC1(&dev->core->mpeg_users) == 1)
		FUNC2(dev);

	FUNC3(fh->dev);
	/* stop mpeg capture */
	FUNC10(&fh->mpegq);

	FUNC9(&fh->mpegq);

	FUNC6(&dev->core->lock);
	file->private_data = NULL;
	FUNC5(fh);
	FUNC7(&dev->core->lock);

	/* Make sure we release the hardware */
	drv = FUNC4(dev, CX88_MPEG_BLACKBIRD);
	if (drv)
		drv->request_release(drv);

	FUNC0(&dev->core->mpeg_users);

	return 0;
}