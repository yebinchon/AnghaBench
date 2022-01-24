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
struct uml_net_private {scalar_t__ fd; } ;
struct uml_net {int /*<<< orphan*/  pdev; struct net_device* dev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 struct uml_net* FUNC0 (int) ; 
 struct uml_net_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(int n, char **error_out)
{
	struct uml_net *device;
	struct net_device *dev;
	struct uml_net_private *lp;

	device = FUNC0(n);
	if (device == NULL)
		return -ENODEV;

	dev = device->dev;
	lp = FUNC1(dev);
	if (lp->fd > 0)
		return -EBUSY;
	FUNC3(dev);
	FUNC2(&device->pdev);

	return 0;
}