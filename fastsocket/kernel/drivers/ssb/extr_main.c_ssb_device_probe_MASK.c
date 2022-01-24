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
struct ssb_driver {int (* probe ) (struct ssb_device*,int /*<<< orphan*/ *) ;} ;
struct ssb_device {int /*<<< orphan*/  id; } ;
struct device {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 struct ssb_device* FUNC0 (struct device*) ; 
 struct ssb_driver* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ssb_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ssb_device*) ; 
 int FUNC4 (struct ssb_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct device *dev)
{
	struct ssb_device *ssb_dev = FUNC0(dev);
	struct ssb_driver *ssb_drv = FUNC1(dev->driver);
	int err = 0;

	FUNC2(ssb_dev);
	if (ssb_drv && ssb_drv->probe)
		err = ssb_drv->probe(ssb_dev, &ssb_dev->id);
	if (err)
		FUNC3(ssb_dev);

	return err;
}