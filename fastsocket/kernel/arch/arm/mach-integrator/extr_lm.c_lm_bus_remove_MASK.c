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
struct lm_driver {int /*<<< orphan*/  (* remove ) (struct lm_device*) ;} ;
struct lm_device {int dummy; } ;
struct device {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lm_device*) ; 
 struct lm_device* FUNC1 (struct device*) ; 
 struct lm_driver* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	struct lm_device *lmdev = FUNC1(dev);
	struct lm_driver *lmdrv = FUNC2(dev->driver);

	if (lmdrv->remove)
		lmdrv->remove(lmdev);
	return 0;
}