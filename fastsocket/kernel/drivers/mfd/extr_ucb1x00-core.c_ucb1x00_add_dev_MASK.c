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
struct ucb1x00_driver {int (* add ) (struct ucb1x00_dev*) ;int /*<<< orphan*/  devs; } ;
struct ucb1x00_dev {int /*<<< orphan*/  drv_node; int /*<<< orphan*/  dev_node; struct ucb1x00_driver* drv; struct ucb1x00* ucb; } ;
struct ucb1x00 {int /*<<< orphan*/  devs; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct ucb1x00_dev*) ; 
 struct ucb1x00_dev* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ucb1x00_dev*) ; 

__attribute__((used)) static int FUNC4(struct ucb1x00 *ucb, struct ucb1x00_driver *drv)
{
	struct ucb1x00_dev *dev;
	int ret = -ENOMEM;

	dev = FUNC1(sizeof(struct ucb1x00_dev), GFP_KERNEL);
	if (dev) {
		dev->ucb = ucb;
		dev->drv = drv;

		ret = drv->add(dev);

		if (ret == 0) {
			FUNC2(&dev->dev_node, &ucb->devs);
			FUNC2(&dev->drv_node, &drv->devs);
		} else {
			FUNC0(dev);
		}
	}
	return ret;
}