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
struct scm_driver {int (* probe ) (struct scm_device*) ;} ;
struct scm_device {int dummy; } ;
struct device {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (struct scm_device*) ; 
 struct scm_device* FUNC1 (struct device*) ; 
 struct scm_driver* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	struct scm_device *scmdev = FUNC1(dev);
	struct scm_driver *scmdrv = FUNC2(dev->driver);

	return scmdrv->probe ? scmdrv->probe(scmdev) : -ENODEV;
}