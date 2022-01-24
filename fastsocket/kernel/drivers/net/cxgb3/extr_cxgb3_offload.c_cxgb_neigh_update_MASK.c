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
struct t3cdev {int dummy; } ;
struct net_device {int dummy; } ;
struct neighbour {struct net_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct t3cdev* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct t3cdev*,struct neighbour*) ; 

__attribute__((used)) static void FUNC4(struct neighbour *neigh)
{
	struct net_device *dev;

	if (!neigh)
		return;
	dev = neigh->dev;
	if (dev && (FUNC2(dev))) {
		struct t3cdev *tdev = FUNC1(dev);

		FUNC0(!tdev);
		FUNC3(tdev, neigh);
	}
}